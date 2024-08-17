#! /bin/bash

echo "Ingresa el nombre del directorio: "
read nombre
echo "Ingresa el formato (c++ o python): "
read formato

if [ -d $nombre ]; then
  echo "El directorio $nombre ya existe"
  cd $nombre
  exit
fi

if [ $formato = "c++" ]; then
  mkdir $nombre
  cd $nombre
  touch README.md
  mkdir src
  touch src/"$nombre"-main.cpp
  mkdir include
  touch include/header.h
  mkdir test
  touch test/"$nombre"-test.cpp
elif [ $formato = "python" ]; then
  mkdir $nombre
  cd $nombre
  touch README.md
  mkdir src
  touch src/"$nombre"-main.py
  mkdir test
  touch test/"$nombre"-test.py
else
  echo "El formato no es valido"
fi
