# 🖨️ Audit de Sécurité des Imprimantes 

## 🏫 Lycée Algoud-Laffemas, Valence

### Académie de Grenoble
**Liberté, Égalité, Fraternité**

---

## 📋 Description

Ce repository contient les résultats d'une analyse de sécurité des imprimantes gérées par la société Koesio dans un établissement scolaire. L'audit a été réalisé pour identifier et gérer les vulnérabilités présentes dans les systèmes d'impression, notamment celles liées au serveur CUPS (Common Unix Printing System).

---

## 📂 Contenu

- **📝 Rapport d'audit**
  - Méthodologie PTES
  - Analyse des vulnérabilités
  - Outils utilisés
  - Tableaux d'impact et de vraisemblance

- **💻 Scripts et commandes**
  - Commandes Nmap
  - Utilisation de Hydra
  - Scripts Bash
  - Configurations Metasploit

- **📊 Données de l'analyse**
  - Résultats des scans et tests de pénétration
  - Listes d'identifiants et mots de passe testés
  - Logs et rapports des outils de sécurité

- **🔒 Recommandations de sécurité**
  - Mesures correctives pour les vulnérabilités identifiées
  - Bonnes pratiques pour sécuriser les imprimantes et les services associés

---

## 📂 Structure du Répertoire

```plaintext
.
├── analysis_nmap_searchsploit
│   ├── nmap_results
│   │   ├── reseau_admin.txt
│   │   └── reseau_pedagogique.txt
│   ├── searchsploit_results
│   │   ├── 21_vsftpd_2.2.2.txt
│   │   ├── 631_CUPS_1.5.txt
│   │   └── 5900_VNC_(protocol_3.8).txt
│   ├── nmap-imprimantes.bat
│   └── searchsploit.sh
├── doc
│   ├── rapport_audit_imprimantes_koesio.docx
│   └── rapport_audit_imprimantes_koesio.pdf
└── security-web
    ├── dirb.json
    ├── nikto.json
    ├── resultats_de_dirb.docx
    ├── resultats_du_scan_nikto.docx
    └── web_scans.sh
```
## 📑 Explications

### Dossier `doc`
Les documents présents dans ce dossier se concentrent sur une seule imprimante spécifique. Nous supposons que les failles identifiées dans cette imprimante sont également présentes sur toutes les autres imprimantes du réseau.

### Autres dossiers
Les autres dossiers (analysis_nmap_searchsploit et security-web) contiennent des analyses effectuées sur chaque imprimante du réseau. Cela inclut les résultats des scans Nmap, les recherches d'exploits avec Searchsploit, ainsi que les tests et scans de sécurité web avec Dirb et Nikto.

---

## 🛠️ Outils Utilisés

### 🌐 Nmap
**Description** : Nmap est un outil de scan de réseau utilisé pour découvrir des hôtes et des services sur un réseau informatique.

**Commandes** :

```bash
nmap -sV 172.22.247.179
```
### 🔍 Searchsploit
**Description** :Searchsploit est un outil permettant de rechercher des exploits locaux et publics stockés dans la base de données Exploit-DB

**Commandes** :

```bash
searchsploit CUPS CVE-2015-1158
```

## 🔒 Confidentialité## 
Ce repository contient des informations sensibles et confidentielles. Sa diffusion est limitée aux personnes autorisées par l'établissement scolaire et la société Koesio.


## 📅 Dates Importantes
Date de l'intervention : 21/05/2024
Date de soumission : 15/05/2024



_Auteur : Eloham Caron, BTS SIO Option SISR_

