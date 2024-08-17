#! bin/bash

echo "Ingresa el nombre del archivo a compilar: "
read archivo

c++ $archivo.cpp -o $archivo
echo "Se ha compilado el archivo $archivo"
