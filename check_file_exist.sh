
#!/bin/bash

echo -n "Entrez le nom du fichier à vérifier : "
read fichier

if [ -z "$fichier" ]; then
  echo "Vous n'avez pas saisi de nom de fichier."
  exit 1
fi

if [ -f "$fichier" ]; then
  echo "Le fichier existe."
else
  echo "Le fichier n'existe pas."
fi
