#! /usr/bin/env bash

while true; 
do
    mensaje=$(cat Chat1Chat2)
    echo "Persona 1: $mensaje" 
    read -p "Persona 2: " respuesta
    echo "$respuesta" > chat2Chat1 
done