# Las Torres Malditas - Sistema para Foundry VTT

Este repositorio contiene el sistema oficial para jugar al juego de rol **Las Torres Malditas** dentro de **Foundry Virtual Tabletop (Foundry VTT)**.

Incluye tanto el código fuente como el contenido narrativo necesario para jugar:
- Hoja de personaje (Hoja de Nexar)
- Habilidades y talentos
- Sistema de tiradas con d12 + d8
- Lore: ambientación, razas, facciones, magia basada en éter

---

## 📜 Licencia

### 🔧 Código (sistema para Foundry VTT)
Este proyecto está licenciado bajo la **MIT License**. Puedes usar, modificar y redistribuir el código con libertad, siempre que mantengas el aviso de copyright.

### 🧙 Contenido narrativo, gráfico y de ambientación
Todo el material narrativo y de ambientación (Lore, razas, talentos, magia, historia, nombres propios, etc.) está protegido bajo la licencia:

**[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/)**

Esto significa que:
- Puedes compartir y adaptar el material, siempre que:
  - Menciones al autor original (**José Enrique Labordeta Fernández**).
  - No lo utilices con fines comerciales.
  - Distribuyas cualquier obra derivada bajo la misma licencia.

---

## 🚀 Instalación
### Opción 1: Instalación automática desde manifest

1. Abre Foundry VTT.
2. Ve a **"Configuración de sistemas de juego"** → **"Instalar sistema"**.
3. Pega esta URL en el campo de manifiesto:

```
https://raw.githubusercontent.com/AstonRendar/Las-Torres-Malditas-Game-System/main/system.json
```

4. Haz clic en **"Instalar"**.
5. Una vez instalado, selecciona **“Las Torres Malditas”** como sistema al crear un nuevo mundo.

---

### Opción 2: Instalación manual

1. Descarga el sistema desde GitHub:
   [Descargar ZIP](https://github.com/AstonRendar/Las-Torres-Malditas-Game-System/archive/refs/heads/main.zip)
2. Extrae el contenido en la carpeta `Data/systems/` de tu instalación de Foundry VTT.
3. Renombra la carpeta resultante a `las-torres-malditas` si es necesario.
4. Inicia Foundry y crea un nuevo mundo usando **Las Torres Malditas** como sistema.

---

¿Quieres que prepare también los bloques para requisitos (por ejemplo, `libWrapper`) y compatibilidad con Foundry?


---

## 📁 Propuesta de estructura del repositorio
```
las-torres-malditas/
├── assets/
│   ├── tokens/
│   ├── retratos/
│   └── logos/
├── docs/                      # Lore y documentación externa en Markdown
│   ├── historia.md
│   ├── magia.md
│   ├── razas.md
│   ├── facciones.md
│   └── religiones.md
├── lang/
│   └── es.json                # Traducción al español
├── packs/                     # Todos los compendios del sistema
│   ├── habilidades.db
│   ├── talentos.db
│   ├── razas.db
│   ├── enemigos.db
│   ├── pnj-pregenerados.db
│   ├── objetos.db
│   ├── lore-historia.db
│   ├── lore-religiones.db
│   └── lore-facciones.db
├── scripts/
│   ├── sistema/               # Lógica y mecánicas
│   └── macros/                # Macros personalizadas
├── styles/
│   └── sistema.css
├── templates/
│   ├── actor/
│   ├── item/
│   └── chat/
├── LICENSE
├── README.md
├── system.json                # Configuración base del sistema
└── template.json              # (Opcional)

```

---

## ✨ Créditos
Sistema, Lore y desarrollo por **José Enrique Labordeta Fernández**

Inspirado por años de pasión por el rol, la narrativa y la tecnología.

---

> "Todo lo que ocurre, ya ocurrió. Las Torres son el eco de la voluntad perdida."
