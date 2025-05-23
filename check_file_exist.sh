#!/bin/bash

read -p "Nom du fichier : " nom


if [ ! -f "$nom" ]; then
  echo "File does not exist."
else
  echo "File exists."
fi

