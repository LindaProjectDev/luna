# Luna

Backend Spring Boot (Java 17) conteneurisé, orienté DevOps (healthcheck, endpoints techniques, CI GitHub Actions).

## Accès (dev)
Port principal :
- http://localhost:10080

Port alternatif (si besoin) :
- http://localhost:10081

Endpoints utiles :
- `/actuator/health` : health JSON (monitoring)
- `/hello` : smoke test
- `/supervision` : page technique
- `/` : page d’entrée (HTML)

Tests recommandés :
```bash
curl -i http://localhost:10080/actuator/health
curl -i http://localhost:10080/hello
