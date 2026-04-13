# Sistema de Gestión de Mensajería

## Descripción del Proyecto
Sistema desenvolvido para la gestión y administración de mensajería con funcionalidades de almacenamiento, distribución y monitoreo de mensajes.

## Estructura del Proyecto
```
Sistema de Gestion de Mensajeria/
├── README.md
├── documentacion/
│   └── Proyecto.docx (Insumo de Jira - Especificaciones del proyecto)
└── [Otras carpetas y archivos del proyecto]
```

## Ramas Principales
- **main**: Rama de producción (código estable)
- **develop**: Rama de desarrollo (integración de nuevas características)

## Flujo de Trabajo Git

### 1. Verificar estado actual
```bash
git status
```

### 2. Actualizar rama local
```bash
git pull origin develop
```

### 3. Crear nueva rama de feature
```bash
git checkout -b feature/nombre-feature
```

### 4. Ver cambios en rojo (unstaged)
```bash
git status
```

### 5. Agregar cambios
```bash
git add .
```

### 6. Ver cambios en verde (staged)
```bash
git status
```

### 7. Hacer commit
```bash
git commit -m "Descripción del cambio"
```

### 8. Ver último commit
```bash
git log -1
```

### 9. Enviar cambios al repositorio remoto
```bash
git push origin feature/nombre-feature
```

### 10. Cambiar entre ramas
```bash
git checkout develop
git checkout main
```

## Comandos Git Utilizados

- `git checkout` - Cambiar de rama
- `git pull` - Actualizar rama local desde el repositorio remoto
- `git checkout -b` - Crear y cambiar a una nueva rama
- `git status` - Ver estado de los archivos (rojo = unstaged, verde = staged)
- `git add` - Agregar archivos al staging area
- `git commit` - Crear un commit con los cambios
- `git log -1` - Ver el último commit
- `git push` - Enviar cambios al repositorio remoto
- `git branch -a` - Ver todas las ramas

## Configuración del Repositorio
- Usuario: Developer
- Email: developer@example.com
- Repositorio remoto: GitHub

## Estado Actual
- Rama activa: develop
- Último commit: Commit inicial: Documentacion del proyecto
- Ramas disponibles: main, develop

## Pasos para Contribuir
1. Actualizar rama develop: `git pull origin develop`
2. Crear branch para tu feature: `git checkout -b feature/tu-feature`
3. Realizar cambios
4. Agregar cambios: `git add .`
5. Hacer commit: `git commit -m "Descripción clara del cambio"`
6. Push a rama remota: `git push origin feature/tu-feature`
7. Crear Pull Request en GitHub

---
Última actualización: 13 de Abril de 2026
