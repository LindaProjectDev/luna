# Contribuer à Luna

## Branches
- `dev` : développement
- `main` : stable / release

## Workflow
1. Fork (si externe) ou branche depuis `dev`
2. Fais un commit clair
3. Ouvre une PR vers `dev`
4. CI doit être au vert

## Conventions
- Messages de commit : clairs et courts
- Pas de secrets dans le repo
- Mets à jour la doc si tu changes le comportement

## Lancer en local
```bash
mvn -q -DskipTests package
docker build -t luna:dev .
docker run --rm -p 8080:8080 luna:dev
