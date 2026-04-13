# FLUJO GIT PARA VIDEO - Sistema de Gestión de Mensajería

## Descripción
Este documento contiene todos los comandos Git que se deben mostrar en orden para demostrar el flujo completo de trabajo con Git y GitHub en la rama develop.

---

## FLUJO COMPLETO DE COMANDOS GIT

### Paso 1: Ver estado actual de la rama (archivo en ROJO - unstaged)
```bash
git status
```
**Resultado esperado**: Muestra archivos que no han sido agregados al staging area en rojo

**Salida en consola**:
```
On branch develop
Untracked files:
  (use "git add <file>..." to include in this commit)
        archivo.md

nothing added to commit but untracked files present (use "git add" to track)
```

---

### Paso 2: Cambiar de rama (ejemplo: ir a main)
```bash
git checkout main
```

### Paso 3: Ver rama actual
```bash
git branch
```

### Paso 4: Regresar a develop
```bash
git checkout develop
```

---

### Paso 5: Actualizar rama local desde el repositorio remoto
```bash
git pull origin develop
```
**Resultado esperado**: Se descarga el contenido más reciente de la rama develop de GitHub

---

### Paso 6: Crear una nueva rama (ramificación) - ALTERNATIVA
```bash
git checkout -b feature/nueva-funcionalidad
```
**Resultado esperado**: Crea una nueva rama llamada "feature/nueva-funcionalidad" y cambia a ella

---

### Paso 7: Ver estado ANTES de agregar (archivo en ROJO)
```bash
git status
```
**Resultado esperado**: 
```
On branch develop
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   documentacion/archivo.md

Untracked files:
  (use "git add <file>..." to include in this commit)
        archivo_nuevo.md

nothing added to commit but untracked files present
```

---

### Paso 8: Agregar archivos al staging area (preparar para commit)
```bash
git add .
```
O agregar archivos específicos:
```bash
git add documentacion/archivo.md
git add archivo_nuevo.md
```

---

### Paso 9: Ver estado DESPUÉS de agregar (archivo en VERDE - staged)
```bash
git status
```
**Resultado esperado**:
```
On branch develop
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   archivo_nuevo.md
        modified:   documentacion/archivo.md
```

---

### Paso 10: Hacer commit (guardar cambios con mensaje descriptivo)
```bash
git commit -m "docs: Agregar especificaciones del proyecto"
```

**Resultado esperado**:
```
[develop 6017a17] docs: Agregar especificaciones del proyecto
 1 file changed, 154 insertions(+)
 create mode 100644 documentacion/archivo.md
```

---

### Paso 11: Ver el último commit (HEAD)
```bash
git log -1
```

**Resultado esperado**:
```
commit 6017a170f20153cc896d5bb46ce65942e210571b (HEAD -> develop)
Author: Developer <developer@example.com>
Date:   Mon Apr 13 10:41:54 2026 -0500

    docs: Agregar especificaciones del proyecto
```

**ALTERNATIVA - Ver último commit en una línea**:
```bash
git log -1 --oneline
```

**Resultado esperado**:
```
6017a17 (HEAD -> develop) docs: Agregar especificaciones del proyecto
```

---

### Paso 12: Ver historial de commits
```bash
git log --oneline
```

**Resultado esperado**:
```
6017a17 (HEAD -> develop) docs: Agregar especificaciones del proyecto
56cd030 docs: Agregar README con documentacion del proyecto
65abb81 (main) Commit inicial: Documentacion del proyecto
```

---

### Paso 13: Enviar cambios al repositorio remoto (GitHub)
```bash
git push origin develop
```

**Resultado esperado**:
```
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 1.23 KiB | 1.23 MiB/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), done.
To https://github.com/Highlander2003/Sistema-de-Gestion-de-Mensajeria
   65abb81..6017a17  develop -> develop
```

---

## FLUJO RESUMIDO (SIN ESPACIOS POR PASOS)

```bash
# 1. Ver estado
git status

# 2. Cambiar de rama
git checkout develop

# 3. Actualizar rama local
git pull origin develop

# 4. Crear nueva rama (opcionales)
git checkout -b feature/mi-feature

# 5. Ver cambios sin stagear (archivo en ROJO)
git status

# 6. Agregar archivos
git add .

# 7. Ver cambios liatos para commit (archivo en VERDE)
git status

# 8. Hacer commit
git commit -m "docs: Nuevas especificaciones"

# 9. Ver último commit
git log -1

# 10. Enviar a GitHub
git push origin develop
```

---

## RAMAS DISPONIBLES

```bash
# Ver todas las ramas
git branch -a
```

**Resultado esperado**:
```
* develop
  main
  remotes/origin/Develop
  remotes/origin/HEAD -> origin/main
  remotes/origin/main
```

---

## CONFIGURACIÓN DEL REPOSITORIO

```bash
# Ver repositorios remotos
git remote -v
```

**Resultado esperado**:
```
origin  https://github.com/Highlander2003/Sistema-de-Gestion-de-Mensajeria (fetch)
origin  https://github.com/Highlander2003/Sistema-de-Gestion-de-Mensajeria (push)
```

---

## NOTAS IMPORTANTES PARA EL VIDEO

1. **Archivos en ROJO**: Son cambios que no han sido agregados al staging area
2. **Archivos en VERDE**: Son cambios que están listos para ser commitedos
3. **Mensaje de commit**: Debe ser descriptivo y seguir buenas prácticas (ej: "docs:", "feat:", "fix:")
4. **git log -1**: Muestra solo el último commit
5. **git push**: Envía los cambios locales al repositorio remoto en GitHub

---

## COMPARACIÓN VISUAL

### ANTES (sin stagear) - ROJO
```
M documentacion/especificacion.md
?? archivo_nuevo.md
```

### DESPUÉS (después de git add) - VERDE
```
A documentacion/especificacion.md
A archivo_nuevo.md
```

---

## INFORMACIÓN DEL PROYECTO

- **Repositorio Local**: c:\Users\MrEdgeLord\Desktop\UNIAJC\Ing Software III\Sistema de Gestion de Mensajeria
- **Repositorio Remoto**: https://github.com/Highlander2003/Sistema-de-Gestion-de-Mensajeria
- **Ramas Principales**: main (producción), develop (desarrollo)
- **Usuario Git**: Developer
- **Email Git**: developer@example.com

---

**Documento creado**: 13 de Abril de 2026  
**Para mostrar en**: Video de demostración Git y GitHub
