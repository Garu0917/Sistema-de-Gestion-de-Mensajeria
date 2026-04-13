#!/bin/bash
# Comandos Git para demostración en GitBash
# Sistema de Gestión de Mensajería

# Ver estado actual (archivo en ROJO - unstaged)
git status

# Cambiar a rama main
git checkout main

# Ver rama actual
git branch

# Regresar a develop
git checkout develop

# Actualizar rama local desde remoto
git pull origin develop

# Ver estado ANTES de agregar (archivo en ROJO)
git status

# Agregar archivos al staging area
git add .

# Ver estado DESPUÉS de agregar (archivo en VERDE)
git status

# Hacer commit
git commit -m "docs: Agregar nueva documentacion"

# Ver último commit
git log -1

# Ver último commit en una línea
git log -1 --oneline

# Ver historial de commits
git log --oneline

# Ver todas las ramas
git branch -a

# Ver repositorio remoto
git remote -v

# Enviar cambios a GitHub
git push origin develop
