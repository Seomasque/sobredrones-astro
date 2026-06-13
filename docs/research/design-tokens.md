# Sobredrones — Paleta de color (muestreada del sitio real)

Origen: `getComputedStyle` sobre https://sobredrones.es (Fase 1). El sitio usa la conocida paleta
**"Land & Sea"**. Azul principal real = `#457b9d`.

## Colores detectados en producción
| Hex | Dónde aparece | Frecuencia |
|---|---|---|
| `#457b9d` | botones, acentos (azul marca) | alta |
| `#a8dadc` | botones suaves, fondos azul claro | media |
| `#1d1e20` | texto/titulares (casi negro) | muy alta (223) |
| `#56585e` | texto secundario (gris) | media |
| `#529fe3` | enlaces/acento brillante | baja |
| `#7ef7f5` | texto destacado sobre oscuro (badge AESA) | baja |
| `#ffffff` | texto sobre secciones azules | alta (64) |

## Tokens finales (reemplazan los amarillos de Helicom en globals.css)
| Token | Hex | Rol | Contraste |
|---|---|---|---|
| `--colorMain` | `#457b9d` | primario: botones, enlaces, iconos, badges, línea fina de títulos | blanco encima = **4.59:1 ✅ AA** |
| `--colorMainDark` | `#1d3557` | hover de botones / azul profundo | blanco encima = 11.4:1 ✅ |
| `--colorSky` | `#a8dadc` | azul claro: fondos de hero/sección suaves | texto oscuro encima ✅ |
| `--colorSkySoft` | `#e8f4f4` | círculos de icono, fondos muy claros | — |
| `--colorNavy` | `#1d3557` | secciones oscuras (Cómo trabajamos) y footer | texto blanco ✅ |
| `--colorAccentCyan` | `#7ef7f5` | destello sobre fondos oscuros (badge AESA), uso mínimo | solo sobre navy/oscuro |
| `--colorDark` | `#1d1e20` | titulares y texto fuerte | ✅ |
| `--colorFont` | `#56585e` | texto cuerpo | ✅ |
| `--colorGrey` | `#f1faee` | fondos de sección claros (blanco roto de la paleta) | — |
| `--colorBorder` | `#d7e3e4` | bordes / inputs | — |
| `--colorLight` | `#ffffff` | base | — |
| `--colorSuccess` | `#1A9E5C` | estado OK del formulario | — |
| `--colorError` | `#D64545` | estado error del formulario | — |

## Reglas de aplicación (cambia respecto a Helicom)
- **Botón primario:** fondo `#457b9d` + **texto BLANCO** → hover: `#1d3557` (en Helicom el amarillo
  llevaba texto oscuro; aquí NO).
- **Botón outline:** borde+texto `#457b9d` → hover: relleno `#457b9d` + texto blanco.
- **Badges** (servicios/galería): `#457b9d` + texto blanco.
- **Secciones oscuras** (Cómo trabajamos, footer): fondo `#1d3557` (navy), texto blanco, números/
  acentos en `#a8dadc` o `#7ef7f5`.
- **Hero:** imagen + overlay; la línea fina del título puede ir en `#a8dadc`.
- **Único acento** = azul (familia). El cian `#7ef7f5` solo como destello puntual sobre oscuro.
- Objetivo global: **WCAG AA** en todo texto.

> Estos hex quedan BLOQUEADOS para Fase 4 (recoloreado de `globals.css` y componentes).
