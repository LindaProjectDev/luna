<!-- ===================================================== -->
<!-- 🌙 LUNA — DEVOPS MISSION CONTROL / ULTRA IMMERSIVE -->
<!-- ===================================================== -->

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:b026ff,50:8b2cff,100:6a00ff&height=180&section=header&text=🌙%20LUNA&fontSize=64&fontColor=ffffff&animation=fadeIn&fontAlignY=35" />
</p>

<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=18&duration=2200&pause=600&color=D36BFF&center=true&vCenter=true&width=900&lines=DEVOPS+MISSION+CONTROL;AWS+%7C+Docker+%7C+Kubernetes+(k3s);CI%2FCD+Fully+Automated;Observability+Always+On;Automate.+Observe.+Improve." />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/STATUS-LIVE-b026ff?style=for-the-badge&labelColor=0b0b12" />
  <img src="https://img.shields.io/badge/MODE-PRODUCTION%20READY-b026ff?style=for-the-badge&labelColor=0b0b12" />
  <img src="https://img.shields.io/badge/SECURITY-LEAST%20PRIVILEGE-b026ff?style=for-the-badge&labelColor=0b0b12" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/AWS-EC2-b026ff?style=for-the-badge&labelColor=0b0b12" />
  <img src="https://img.shields.io/badge/KUBERNETES-k3s-b026ff?style=for-the-badge&labelColor=0b0b12" />
  <img src="https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-b026ff?style=for-the-badge&labelColor=0b0b12" />
  <img src="https://img.shields.io/badge/IaC-Terraform-b026ff?style=for-the-badge&labelColor=0b0b12" />
</p>

---

## 🧠 SYSTEM STATUS (LIVE HUD)

| SYSTEM | STATE | SIGNAL |
|------|------|------|
| Backend API | ONLINE | 🟣 HEALTHY |
| Frontend | ONLINE | 🟣 SERVING |
| Kubernetes | RUNNING | 🟣 STABLE |
| CI/CD | ENABLED | 🟣 AUTOMATED |
| Observability | ACTIVE | 🟣 FULL |

---

## 🎛️ DEVOPS DASHBOARD (WIDGET GRID)

<table>
<tr>
<td width="25%">

### 🧩 API CORE
<img src="https://img.shields.io/badge/Spring%20Boot-REST-b026ff?style=for-the-badge&labelColor=0b0b12" />
<img src="https://img.shields.io/badge/Health-OK-b026ff?style=for-the-badge&labelColor=0b0b12" />

`/api/hello`  
`/actuator/health`

</td>

<td width="25%">

### 🎨 FRONTEND
<img src="https://img.shields.io/badge/Nginx-Serving-b026ff?style=for-the-badge&labelColor=0b0b12" />
<img src="https://img.shields.io/badge/UI-Static-b026ff?style=for-the-badge&labelColor=0b0b12" />

NodePort / Ingress

</td>

<td width="25%">

### ☸️ KUBERNETES
<img src="https://img.shields.io/badge/Cluster-k3s-b026ff?style=for-the-badge&labelColor=0b0b12" />
<img src="https://img.shields.io/badge/Pods-Stable-b026ff?style=for-the-badge&labelColor=0b0b12" />

Deployments + Services

</td>

<td width="25%">

### ☁️ CLOUD
<img src="https://img.shields.io/badge/AWS-EC2-b026ff?style=for-the-badge&labelColor=0b0b12" />
<img src="https://img.shields.io/badge/Free--Tier-Optimized-b026ff?style=for-the-badge&labelColor=0b0b12" />

Secure SG / VPC

</td>
</tr>
</table>

---

## 📊 OBSERVABILITY MATRIX

<p align="center">
  <img src="https://img.shields.io/badge/Prometheus-Metrics-b026ff?style=for-the-badge&labelColor=0b0b12" />
  <img src="https://img.shields.io/badge/Grafana-Dashboards-b026ff?style=for-the-badge&labelColor=0b0b12" />
  <img src="https://img.shields.io/badge/ELK-Logs-b026ff?style=for-the-badge&labelColor=0b0b12" />
</p>

- Metrics Kubernetes + applicatives
- Logs centralisés backend / frontend
- Dashboards temps réel
- Diagnostic rapide incident

---

## 🧬 ARCHITECTURE MAP

```mermaid
%%{init: {"theme":"base","themeVariables":{
"primaryColor":"#b026ff",
"primaryTextColor":"#0b0b12",
"primaryBorderColor":"#8b2cff",
"lineColor":"#d36bff",
"secondaryColor":"#0b0b12",
"tertiaryColor":"#141428"
}}}%%
flowchart LR
U[User] --> FE[Nginx Frontend]
FE --> API[Spring Boot API]
API -->|logs| ELK[(Elasticsearch)]
API -->|metrics| PROM[Prometheus]
PROM --> GRAF[Grafana]
subgraph AWS
EC2 --> K3S[k3s]
K3S --> FE
K3S --> API
end
