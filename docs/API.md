# API

## Endpoints disponibles

### Page d’entrée (HTML)
- `GET /` : point d’entrée applicatif (page HTML)

### Smoke test
- `GET /hello` : vérifie que l’app répond

### Supervision (humain)
- `GET /supervision` : page technique (exploitation / diagnostic)

### Monitoring (machine)
- `GET /actuator/health` : healthcheck JSON (UP/DOWN)
  - groupes : `liveness`, `readiness`

## Exemples
```bash
curl -i http://localhost:10080/
curl -i http://localhost:10080/hello
curl -i http://localhost:10080/actuator/health
