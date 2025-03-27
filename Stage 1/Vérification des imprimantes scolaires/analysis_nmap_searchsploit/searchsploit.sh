#!/bin/bash

# Créer un dossier pour stocker les résultats
results_dir="exploits_results"
mkdir -p "$results_dir"

# Tableau des services et versions trouvés
declare -A services=(
    ["21"]="vsftpd 2.2.2"
    ["25"]="Sendmail 8.14.3/8.14.3"
    ["631"]="CUPS 1.5"
    ["5900"]="VNC (protocol 3.8)"
)

# Fonction pour rechercher les exploits avec searchsploit
function search_exploits {
    local port="$1"
    local service="$2"
    local output_file="$results_dir/${port}_${service// /_}.txt"
    echo "Recherche d'exploits pour $service sur le port $port"
    searchsploit "$service" > "$output_file"
    echo "Résultats enregistrés dans $output_file"
}

# Boucle sur les services pour rechercher les exploits
for port in "${!services[@]}"; do
    service="${services[$port]}"
    search_exploits "$port" "$service"
done

echo "Recherche d'exploits terminée. Résultats enregistrés dans le dossier $results_dir"
