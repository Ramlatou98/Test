#!/bin/bash

read -p "Nom du fichier : " fichier

if [ -f "$fichier" ]; then
  echo "Le fichier existe."
else
  echo "Le fichier n'existe pas."
fi

