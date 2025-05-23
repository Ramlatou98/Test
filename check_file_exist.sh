#!/bin/bash

while true; do
  echo -n "Entrez le nom du fichier à vérifier : "
  read fichier

  # Vérifie si l'utilisateur a saisi quelque chose
  if [[ -z "$fichier" ]]; then
    echo " Aucun nom saisi. Veuillez réessayer."
    continue
  fi

  # Vérifie si c'est un fichier
  if [[ -f "$fichier" ]]; then
    echo " Le fichier '$fichier' existe."
    break
  fi

  # Vérifie si c'est un répertoire
  if [[ -d "$fichier" ]]; then
    echo " '$fichier' est un répertoire."
    break
  fi

  # Sinon, fichier non trouvé
  echo " Aucun fichier ou dossier trouvé avec ce nom."
  echo -n "Voulez-vous réessayer ? (o/n) : "
  read reponse
  [[ "$reponse" != "o" && "$reponse" != "O" ]] && break
done
