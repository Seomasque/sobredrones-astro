---
name: Sobredrones
description: Operadora de drones en Málaga y la Costa del Sol — landing de captación
colors:
  primary: "#457b9d"
  primary-deep: "#1d3557"
  sky: "#a8dadc"
  sky-soft: "#e8f4f4"
  accent-cyan: "#7ef7f5"
  ink: "#1d1e20"
  body-text: "#56585e"
  surface: "#ffffff"
  surface-muted: "#eef4f8"
  border: "#d7e3e4"
  success: "#1a9e5c"
  error: "#d64545"
typography:
  display:
    fontFamily: "Bricolage Grotesque Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "clamp(2.1rem, 5vw, 3.5rem)"
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: "-0.015em"
  body:
    fontFamily: "Hanken Grotesk Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "16px"
    fontWeight: 400
    lineHeight: 1.7
    letterSpacing: "normal"
  label:
    fontFamily: "Hanken Grotesk Variable, ui-sans-serif, sans-serif"
    fontSize: "14px"
    fontWeight: 600
    lineHeight: 1.2
    letterSpacing: "0.18em"
rounded:
  sm: "4px"
  md: "6px"
spacing:
  section: "100px"
  block: "24px"
  inline: "16px"
components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.surface}"
    rounded: "{rounded.sm}"
    padding: "12px 35px"
  button-primary-hover:
    backgroundColor: "{colors.primary-deep}"
    textColor: "{colors.surface}"
  button-outline:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.primary}"
    rounded: "{rounded.sm}"
    padding: "12px 35px"
  card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.body-text}"
    rounded: "{rounded.md}"
    padding: "24px"
  input:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
    padding: "14px 16px"
---

# Design System: Sobredrones

## 1. Overview

**Creative North Star: "El mar y la tierra desde el aire"**

Sobredrones es una operadora de drones de la Costa del Sol, y su sistema visual nace de la paleta
real de la marca: la familia azul "Land & Sea" (mar mediterráneo + cielo). El azul no es decorativo,
es la voz; lo profundo (navy) ancla las secciones de confianza, el azul medio empuja a la acción y
el azul claro respira como el aire. La fotografía aérea es la protagonista: el diseño la enmarca con
tipografía firme y mucho aire, nunca compite con ella.

El sistema rechaza explícitamente la estética de **constructor genérico** de la que partió el sitio
original (cajas iguales, pasteles sin jerarquía, todo centrado) y cualquier **slop de IA** (morados,
gradientes tech, glassmorphism, gradient text). En su lugar: una sola voz cromática azul, contraste
real, ritmo de secciones variado (algunas centradas, otras alineadas a la izquierda) y movimiento
sobrio que aparece al hacer scroll.

**Key Characteristics:**
- Azul de marca único como acento, sobre neutros fríos.
- Tipografía de carácter (grotesca de display) + cuerpo humanista legible.
- Imagen aérea protagonista; tarjetas solo cuando aportan jerarquía.
- Movimiento al servicio del contenido, desactivable con `prefers-reduced-motion`.

## 2. Colors

Una sola familia azul ("Land & Sea") sobre neutros fríos; el azul es la voz, no un adorno.

### Primary
- **Azul Marea** (`#457b9d`): color de marca. Botones, enlaces, iconos, badges, número de pasos y
  acentos. Sobre él siempre va texto blanco (contraste 4.59:1).

### Secondary
- **Navy Profundo** (`#1d3557`): secciones oscuras ("Cómo trabajamos", footer, barra de contacto),
  hover de botones y eyebrows sobre fondo claro (para contraste AA). Ancla las zonas de confianza.
- **Azul Cielo** (`#a8dadc`): números de paso, detalles claros y matices sobre fondo oscuro.

### Tertiary
- **Cian Destello** (`#7ef7f5`): solo como chispa puntual sobre navy (escudo "verificada por AESA").
  Uso mínimo.

### Neutral
- **Tinta** (`#1d1e20`): titulares y texto fuerte.
- **Gris Texto** (`#56585e`): cuerpo de párrafo.
- **Superficie** (`#ffffff`): fondo base.
- **Superficie Fría** (`#eef4f8`): fondos de sección alternos (azul-gris muy claro).
- **Borde** (`#d7e3e4`): líneas divisorias, inputs, separadores.

Semánticos: **Éxito** (`#1a9e5c`) y **Error** (`#d64545`) solo en estados del formulario.

### Named Rules
**La Regla de Una Sola Voz.** El sistema es monocromático azul. Ningún segundo color de marca.
La variedad viene de la luminosidad (navy → marea → cielo), no de añadir tonos.

**La Regla del Texto Blanco.** Sobre el azul de marca, el texto SIEMPRE es blanco, nunca oscuro
(al contrario que el amarillo del tema del que se partió).

## 3. Typography

**Display Font:** Bricolage Grotesque Variable (con ui-sans-serif, system-ui)
**Body Font:** Hanken Grotesk Variable (con ui-sans-serif, system-ui)

**Character:** una grotesca de display con personalidad contemporánea (ligeramente excéntrica, nada
corporativa) sobre un cuerpo humanista limpio y muy legible. Firme arriba, tranquilo en lectura.

### Hierarchy
- **Display / H1** (700, `clamp(2.1rem, 5vw, 3.5rem)`, 1.1): titular del hero.
- **Headline / H2** (700, ~2.1rem, 1.2): títulos de sección.
- **Title / H3** (700, ~1.15rem, 1.3): nombres de servicio, pasos, ítems.
- **Body** (400, 16px, 1.7): párrafos; ancho de línea cómodo (38–65ch).
- **Label / Eyebrow** (600, 14px, +0.18em, MAYÚSCULAS): kickers sobre los títulos.

### Named Rules
**La Regla del Eyebrow Accesible.** Los kickers en mayúsculas usan `primary-deep` (#1d3557), no el
azul marea, para mantener ≥4.5:1 sobre fondos claros.

**La Regla de la Marca en Display.** El wordmark "Sobredrones" se compone en Bricolage Grotesque;
es el único sitio donde el display baja a tamaño de UI.

## 4. Elevation

Sistema **plano por defecto**. La profundidad la dan el color (secciones navy vs. claras) y el
espacio, no las sombras. Las sombras aparecen solo como respuesta a estado (hover) y siempre tintadas
hacia el navy de marca, nunca negro puro.

### Shadow Vocabulary
- **Hover de tarjeta** (`box-shadow: 0 12px 28px -14px rgba(29, 53, 87, 0.3)`): elevación sutil al
  pasar el cursor sobre servicios/testimonios; se acompaña de `translateY(-3px)`.

### Named Rules
**La Regla del Plano en Reposo.** Las superficies están planas hasta que el usuario interactúa.
Si una tarjeta tiene sombra en estado normal, está mal.

## 5. Components

### Buttons
- **Shape:** esquinas ligeramente redondeadas (4px).
- **Primary:** fondo Azul Marea (#457b9d) + texto blanco, padding `12px 35px`.
- **Hover / Focus:** fondo a Navy Profundo (#1d3557); foco de teclado con `outline: 2px solid` azul,
  `outline-offset: 2px`.
- **Outline:** borde y texto azul sobre blanco; al hover se rellena de azul con texto blanco.

### Cards / Containers
- **Corner Style:** 6px.
- **Background:** blanco sobre secciones de superficie fría (#eef4f8).
- **Shadow Strategy:** plano en reposo; sombra tintada de navy solo al hover (ver Elevation).
- **Border:** ninguno por defecto; las listas usan divisores de 1px (#d7e3e4) en lugar de cajas.
- **Internal Padding:** 24px.

### Inputs / Fields
- **Style:** borde 1px (#d7e3e4) sobre blanco, radio 4px, label oculto accesible (`sr-only`).
- **Focus:** borde a azul marea + outline visible; nunca `outline: none` sin reemplazo.
- **Error:** borde a rojo (#d64545) + mensaje en `aria-live`.

### Navigation
- **Style:** header fijo transparente sobre el hero (logo y enlaces en blanco), que pasa a blanco
  con sombra al hacer scroll (enlaces en tinta). CTA de teléfono en azul marea.
- **Mobile:** menú hamburguesa desplegable; enlaces ancla a cada sección.

### Signature: Bloque "¿Por qué elegirnos?"
Layout asimétrico (no rejilla de tarjetas): intro + CTA a la izquierda; a la derecha, lista de
diferenciadores en filas con número (en Azul Cielo), icono (Azul Marea) y divisores de 1px. Es la
respuesta deliberada a la "rejilla de tarjetas idénticas".

## 6. Do's and Don'ts

### Do:
- **Do** usar el Azul Marea (#457b9d) como único acento, con texto **blanco** encima.
- **Do** anclar las secciones de confianza (contacto, "cómo trabajamos", footer) en Navy (#1d3557).
- **Do** variar el ritmo: alternar cabeceras centradas y alineadas a la izquierda; alternar fondos
  blanco / superficie fría (#eef4f8).
- **Do** dejar que la fotografía aérea sea la protagonista; servirla en WebP con `<picture>`.
- **Do** mantener foco de teclado visible y respetar `prefers-reduced-motion`.

### Don't:
- **Don't** usar morados/gradientes "tech", glassmorphism decorativo ni gradient text.
- **Don't** recaer en la rejilla de tarjetas idénticas (icono + título + texto repetida sin fin).
- **Don't** centrarlo todo: el stack centrado con tarjetas iguales lee como plantilla de constructor.
- **Don't** poner texto oscuro sobre el azul de marca, ni eyebrows en azul marea sobre fondo claro
  (no llegan a 4.5:1; usar `primary-deep`).
- **Don't** usar sombras en reposo ni negro puro (#000); las sombras van tintadas de navy y solo al
  hover.
- **Don't** añadir un segundo color de marca: rompe la Regla de Una Sola Voz.
