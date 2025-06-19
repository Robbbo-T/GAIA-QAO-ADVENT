# Q-AVIOGEN 🚁✈️

**Generador automático de vídeos técnicos para procedimientos aeroespaciales**

Q-AVIOGEN convierte documentación técnica estructurada (Markdown, YAML, JSON) en vídeos animados profesionales con narración sintética y overlays visuales.

## 🎯 Características

- ✅ Parsing inteligente de documentos ATA
- ✅ Renderizado 3D automatizado con Blender
- ✅ Narración sintética multiidioma
- ✅ Integración con modelos GAIA-QAO
- ✅ Exportación a múltiples formatos
- ✅ Metadatos GQOIS embebidos

## 🛠️ Tecnologías

- **Core**: Python 3.9+
- **Renderizado**: Blender + bpy API
- **Parsing**: Markdown, PyYAML, Jinja2
- **TTS**: Amazon Polly / ElevenLabs / pyttsx3
- **3D Assets**: STEP, glTF, USDZ, OBJ
- **Frontend**: Three.js + React (Fase 2)

## 📁 Estructura

```
q-aviogen/
├── input/
│   ├── markdown/       # Archivos .md ATA
│   ├── yaml/           # Procedimientos declarativos
├── parser/
│   ├── md_parser.py
│   ├── yaml_parser.py
│   └── scene_builder.py
├── blender/
│   ├── templates.blend
│   └── render_scene.py
├── tts/
│   └── narration.py
├── output/
│   ├── videos/
│   └── frames/
├── tests/
└── README.md
```

## 🚀 Instalación

```bash
# Clonar repositorio
git clone https://github.com/tu-usuario/q-aviogen.git
cd q-aviogen

# Crear entorno virtual
python -m venv venv
venv\Scripts\activate  # Windows
# source venv/bin/activate  # Linux/Mac

# Instalar dependencias
pip install -r requirements.txt

# Verificar instalación de Blender
blender --version
```

## 🔄 Uso Básico

1. **Crear procedimiento**:
```bash
# Archivo: input/markdown/00-30-10-01-TowbarAttachment.md
python main.py --input input/markdown/00-30-10-01-TowbarAttachment.md --output output/videos/
```

2. **Desde YAML declarativo**:
```bash
python main.py --yaml input/yaml/towbar_procedure.yaml --format mp4
```

3. **Renderizado batch**:
```bash
python batch_render.py --input-dir input/markdown/ --output-dir output/videos/
```

## 📖 Ejemplo de Input

### Markdown ATA:
```markdown
# 00-30-10-01 Towbar Attachment Procedure

## Overview
This procedure describes the safe attachment of towbar to BWB-Q100 nose gear.

## Steps

### Step 1: Position Towbar
- Align towbar with nose gear connection point
- Verify clearance of 10cm minimum

### Step 2: Attach Connection
- Insert pin through connection holes
- Apply torque of 100Nm
- Verify secure connection
```

### YAML Declarativo:
```yaml
procedure:
  id: "00-30-10-01"
  title: "Towbar Attachment"
  aircraft: "BWB-Q100"
  
steps:
  - id: "step_01"
    description: "Position towbar alignment"
    camera: "front_view"
    duration: 5
    narration: "First, position the towbar ensuring proper alignment with the nose gear."
    overlay: "Minimum clearance: 10cm"
    
  - id: "step_02"
    description: "Secure attachment"
    camera: "close_up"
    duration: 8
    narration: "Insert the connection pin and apply the specified torque."
    overlay: "Torque: 100Nm"
```

## 🧪 Desarrollo

```bash
# Ejecutar tests
python -m pytest tests/

# Desarrollo con recarga automática
python dev_server.py --watch

# Debug modo verbose
python main.py --input example.md --debug --verbose
```

## 🤝 Contribuir

1. Fork del repositorio
2. Crear rama feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit cambios (`git commit -am 'Añadir nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Crear Pull Request

## 📄 Licencia

MIT License - Ver [LICENSE](LICENSE) para detalles.

## 🆘 Soporte

- 📧 Email: soporte@q-aviogen.com
- 📖 Documentación: [docs.q-aviogen.com](https://docs.q-aviogen.com)
- 🐛 Issues: [GitHub Issues](https://github.com/tu-usuario/q-aviogen/issues)

---

**Made with ❤️ for the aerospace industry**
