#! /bin/bash

# Actualización los cambios de mis repositorios y se actualiza el contenidp de mi página web

make html

git add .
git commit -am "Modificación"
git push

cd output/
git add .
git commit -am "WEB"
git push
cd ..
