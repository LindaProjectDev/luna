<div align="center">

<img src="docs/assets/hero-luna.svg" alt="LUNA — Console d’exploitation (ECF)" width="100%" />

<h1>LUNA — Console d’exploitation (ECF)</h1>

<p>
Frontend Angular, servi en statique par Nginx sur Kubernetes (k3s). Cette console valide l’accessibilité externe (NodePort),
la communication avec le backend et l’exploitation (tests & diagnostics).
</p>

<p>
  <img alt="Angular" src="https://img.shields.io/badge/Angular-21.0.5-ff2bd4?style=for-the-badge&labelColor=0b0014" />
  <img alt="Kubernetes" src="https://img.shields.io/badge/Kubernetes-k3s-ff2bd4?style=for-the-badge&labelColor=0b0014" />
  <img alt="Nginx" src="https://img.shields.io/badge/Nginx-Static%20Frontend-ff2bd4?style=for-the-badge&labelColor=0b0014" />
  <img alt="NodePort" src="https://img.shields.io/badge/Exposure-NodePort-ff2bd4?style=for-the-badge&labelColor=0b0014" />
</p>

</div>

---

## Aperçu

<img src="docs/assets/console-preview.png" alt="LUNA — Console UI" width="100%" />

---

## Objectif ECF

- Valider l’exposition externe du frontend via NodePort.
- Vérifier la connectivité vers le backend via un test HTTP sur `/hello`.
- Fournir une console simple d’exploitation : statuts, latence, réponses, logs (kubectl).

---

## Accès

- Accès externe (exemple) : `http://<NODE_IP>:<NODEPORT>/`
- Exemple de NodePort : `30710`

---

## Endpoints backend utilisés

- `/hello` : smoke test
- `/actuator/health` : health JSON (monitoring)

---

## Fonctionnalités UI

- Statut des services (frontend OK, backend testable)
- Zone de test HTTP `/hello` avec affichage :
  - code HTTP
  - latence
  - réponse brute
  - horodatage du dernier test
- Bloc “Environnement” (k3s, NodePort, Nginx, endpoint backend)
- Supervision / logs (accès kubectl logs côté ops)

---

## Stack

- Angular CLI : 21.0.5
- Node / npm : requis pour le dev local
- Déploiement : Nginx (static) sur Kubernetes (k3s)
- Réseau : exposition frontend en NodePort, backend accessible via Ingress (Traefik)

---

## Démarrage local (développement)

### Installation

```bash
npm install
