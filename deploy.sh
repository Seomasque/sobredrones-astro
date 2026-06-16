#!/usr/bin/env bash
# Despliega la web de Sobredrones en el VPS (Dokploy + nginx sirviendo /var/www/sobredrones).
# Uso:  bash deploy.sh
# La clave SSH se puede sobreescribir con la variable de entorno SSH_KEY.
set -euo pipefail

# --- Config ---
SSH_KEY="${SSH_KEY:-/mnt/c/Users/jmedi/.ssh/sobredrones.key}"
REMOTE="${REMOTE:-ubuntu@51.170.47.116}"
TARGET="${TARGET:-/var/www/sobredrones}"
URL="${URL:-https://sobredrones.es}"

# Ejecuta siempre desde la carpeta del script.
cd "$(dirname "$0")"

echo "==> 1/4  Compilando (npm run build)"
npm run build

echo "==> 2/4  Empaquetando dist/"
TARBALL="$(mktemp -t sobredrones-dist.XXXXXX.tar.gz)"
tar -czf "$TARBALL" -C dist .

echo "==> 3/4  Subiendo al VPS"
scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new "$TARBALL" "$REMOTE:/tmp/sd-dist.tar.gz"

echo "==> 4/4  Desplegando en $TARGET"
ssh -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new "$REMOTE" \
  "sudo rm -rf $TARGET/* && sudo tar -xzf /tmp/sd-dist.tar.gz -C $TARGET && sudo chown -R root:root $TARGET && rm -f /tmp/sd-dist.tar.gz"

rm -f "$TARBALL"

echo "==> Verificando $URL"
CODE="$(curl -sk -o /dev/null -w '%{http_code}' --max-time 20 "$URL" || echo '000')"
echo "    HTTP $CODE"
[ "$CODE" = "200" ] && echo "OK: desplegado en $URL" || echo "AVISO: respuesta $CODE (revisa Dokploy/Traefik si no es 200)"
