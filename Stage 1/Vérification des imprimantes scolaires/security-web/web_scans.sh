#!/bin/bash

# Définir l'URL
URL="http://10.26.59.234/"

# Exécuter dirb et afficher les résultats
echo "Running dirb scan on $URL..."
dirb $URL

# Exécuter nikto et afficher les résultats
echo "Running nikto scan on $URL..."
nikto -h $URL
