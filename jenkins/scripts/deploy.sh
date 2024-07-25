#!/bin/bash

# Déploiement sur les serveurs de dev, pré-production et production
echo "Déploiement en cours..."

# Déploiement en développement
docker-compose -f ../docker-compose.yml up -d

# Pour pré-production et production, ajouter des commandes spécifiques ou utiliser des outils comme Ansible pour gérer les déploiements sur ces environnements
