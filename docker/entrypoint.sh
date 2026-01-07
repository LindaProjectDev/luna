#!/bin/sh
set -e

FUCHSIA="\033[38;5;200m"
RESET="\033[0m"

printf "${FUCHSIA}✦ Spring Boot (Java 17) — starting on :%s — profile=%s ✦${RESET}\n" "${APP_PORT}" "${SPRING_PROFILES_ACTIVE}"

exec java \
  -XX:MaxRAMPercentage=75.0 \
  -Dserver.port="${APP_PORT}" \
  -Dspring.profiles.active="${SPRING_PROFILES_ACTIVE}" \
  ${JAVA_OPTS} \
  -jar /app/app.jar
