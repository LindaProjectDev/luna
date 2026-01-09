# Luna

<p align="center">
  <img alt="Luna" src="https://img.shields.io/badge/Luna-fuchsia-ff3dbf?style=for-the-badge">
  <img alt="CI" src="https://img.shields.io/github/actions/workflow/status/LindaProjectDev/luna/ci.yml?branch=dev&style=for-the-badge">
  <img alt="License" src="https://img.shields.io/github/license/LindaProjectDev/luna?style=for-the-badge">
</p>

Backend service for the **Luna** project (Java + Maven), packaged with Docker and automated with GitHub Actions.

## Tech stack
- Java (Maven)
- Docker
- GitHub Actions (CI)

## Quickstart (local)
```bash
mvn -q -DskipTests package
docker build -t luna:dev .
docker run --rm -p 8080:8080 luna:dev
