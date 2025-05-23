#!/bin/bash

read -p "Nom du fichier : " nom

if [ -f  ${nom} ]; then
  echo "Le fichier existe."
else
  echo "Le fichier n'existe pas."
fi

