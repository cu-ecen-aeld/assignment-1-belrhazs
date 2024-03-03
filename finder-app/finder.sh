#!/bin/bash

# Assignation des arguments d'entrée
filesdir=$1
searchstr=$2

# Vérification du nombre d'arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <search_string>"
    exit 1
fi

# Vérification si filesdir est un répertoire
if [ ! -d "$filesdir" ]; then
    echo "The specified directory does not exist: $filesdir"
    exit 1
fi

# Calcul du nombre de fichiers
num_files=$(find "$filesdir" -type f | wc -l)

# Calcul du nombre de lignes correspondantes
num_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Affichage du résultat
echo "Le nombre de fichiers est $num_files et le nombre de lignes correspondantes est $num_lines"

