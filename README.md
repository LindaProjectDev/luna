<!-- ======================= -->
<!-- 🌙 LUNA — DEVOPS PLATFORM -->
<!-- ======================= -->

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=0:ff2fa0,100:ff7ac8&height=120&section=header&text=🌙%20LUNA&fontSize=52&fontColor=0b0b10&animation=fadeIn" />
</p>

<p align="center">
  <b>Plateforme applicative DevOps — ECF Administrateur Système DevOps</b><br/>
  <sub>Automatiser • Orchestrer • Observer • Sécuriser</sub>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/STATUS-OP%C3%89RATIONNEL-ff2fa0?style=for-the-badge&labelColor=0b0b10" />
  <img src="https://img.shields.io/badge/DEVOPS-AWS%20%7C%20Docker%20%7C%20Kubernetes-ff2fa0?style=for-the-badge&labelColor=0b0b10" />
  <img src="https://img.shields.io/badge/OBSERVABILIT%C3%89-Prometheus%20%7C%20Grafana%20%7C%20ELK-ff2fa0?style=for-the-badge&labelColor=0b0b10" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-ff2fa0?style=for-the-badge&labelColor=0b0b10" />
  <img src="https://img.shields.io/badge/IaC-Terraform-ff2fa0?style=for-the-badge&labelColor=0b0b10" />
  <img src="https://img.shields.io/badge/RUNTIME-k3s%20on%20EC2-ff2fa0?style=for-the-badge&labelColor=0b0b10" />
</p>

---

## Tableau de bord “Live” (widgets)

> Remplace les `YOUR_*` par tes vraies URLs / domaines.

<table>
  <tr>
    <td width="33%">
      <b>API Health</b><br/>
      <img src="https://img.shields.io/badge/actuator-health-ff2fa0?style=for-the-badge&labelColor=0b0b10" /><br/>
      <sub>Endpoint: <code>/actuator/health</code></sub>
    </td>
    <td width="33%">
      <b>Frontend</b><br/>
      <img src="https://img.shields.io/badge/nginx-serving-ff2fa0?style=for-the-badge&labelColor=0b0b10" /><br/>
      <sub>NodePort / Ingress (selon setup)</sub>
    </td>
    <td width="33%">
      <b>Cluster</b><br/>
      <img src="https://img.shields.io/badge/k3s-running-ff2fa0?style=for-the-badge&labelColor=0b0b10" /><br/>
      <sub>EC2 Free Tier</sub>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td width="25%">
      <b>Grafana</b><br/>
      <img src="https://img.shields.io/badge/dashboards-ready-ff2fa0?style=for-the-badge&labelColor=0b0b10" /><br/>
      <sub><a href="YOUR_GRAFANA_URL">Open</a></sub>
    </td>
    <td width="25%">
      <b>Prometheus</b><br/>
      <img src="https://img.shields.io/badge/metrics-scraping-ff2fa0?style=for-the-badge&labelColor=0b0b10" /><br/>
      <sub><a href="YOUR_PROMETHEUS_URL">Open</a></sub>
    </td>
    <td width="25%">
      <b>Kibana</b><br/>
      <img src="https://img.shields.io/badge/logs-search-ff2fa0?style=for-the-badge&labelColor=0b0b10" /><br/>
      <sub><a href="YOUR_KIBANA_URL">Open</a></sub>
    </td>
    <td width="25%">
      <b>Elasticsearch</b><br/>
      <img src="https://img.shields.io/badge/indexing-ok-ff2fa0?style=for-the-badge&labelColor=0b0b10" /><br/>
      <sub>Cluster interne</sub>
    </td>
  </tr>
</table>

---

## Objectif du projet

**LUNA** est une application web conçue et déployée dans le cadre de l’**ECF Administrateur Système DevOps**.  
Le projet démontre la **mise en œuvre complète d’une chaîne DevOps**, du provisioning cloud jusqu’à l’exploitation supervisée.

**Focus :**
- Automatisation
- Conteneurisation
- Orchestration Kubernetes
- Déploiement continu
- Observabilité (logs & métriques)

---

## Architecture générale (immersive)

```mermaid
%%{init: {"theme":"base","themeVariables":{
  "primaryColor":"#ff2fa0",
  "primaryTextColor":"#0b0b10",
  "primaryBorderColor":"#ff2fa0",
  "lineColor":"#ff2fa0",
  "secondaryColor":"#0b0b10",
  "tertiaryColor":"#141422",
  "fontFamily":"Inter, ui-sans-serif, system-ui"
}}}%%
flowchart LR
  U[User] -->|HTTPS| FE[Nginx / Frontend]
  FE -->|REST| API[Spring Boot API :8080]
  API -->|logs| ELK[(Elasticsearch)]
  ELK --> KIB[Kibana]
  API -->|metrics| PROM[Prometheus]
  PROM --> GRAF[Grafana]
  subgraph AWS[AWS - Free Tier]
    EC2[EC2 instance] --> K3S[k3s cluster]
    K3S --> FE
    K3S --> API
  end
