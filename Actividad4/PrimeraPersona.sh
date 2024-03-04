#! /usr/bin/env bash

while true;
do
    read -p "Persona 1: " mensaje
    echo "$mensaje" > Chat1Chat2
    respuesta=$(cat Chat2Chat1)
    echo "Persona 2: $respuesta" 
done