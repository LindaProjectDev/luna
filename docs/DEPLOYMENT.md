# Déploiement

## Objectif
Décrire la stratégie de déploiement et les prérequis d’exécution de Luna.

## Exécution (Docker)
L’application écoute dans le conteneur sur `8080`.

Exemple (dev) :
```bash
docker run -d --name luna-dev --restart unless-stopped -p 10080:8080 luna:local
