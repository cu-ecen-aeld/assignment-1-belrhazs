#!/bin/bash

# Assignation des arguments d'entrée
writefile=$1
writestr=$2

# Vérification du nombre d'arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <path_to_file> <string_to_write>"
    exit 1
fi

# Création du dossier contenant le fichier si nécessaire
mkdir -p "$(dirname "$writefile")"

# Écriture de la chaîne dans le fichier, création du fichier si nécessaire
if echo "$writestr" > "$writefile"; then
    echo "String written to $writefile successfully."
else
    echo "Failed to write to $writefile."
    exit 1
fi

