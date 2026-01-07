# ==============================================================================
#   ███████╗██████╗ ██████╗ ██╗███╗   ██╗ ██████╗     ██████╗  ██████╗  ██████╗
#   ██╔════╝██╔══██╗██╔══██╗██║████╗  ██║██╔════╝     ██╔══██╗██╔═══██╗██╔════╝
#   ███████╗██████╔╝██████╔╝██║██╔██╗ ██║██║  ███╗    ██████╔╝██║   ██║██║  ███╗
#   ╚════██║██╔═══╝ ██╔══██╗██║██║╚██╗██║██║   ██║    ██╔═══╝ ██║   ██║██║   ██║
#   ███████║██║     ██║  ██║██║██║ ╚████║╚██████╔╝    ██║     ╚██████╔╝╚██████╔╝
#   ╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝      ╚═════╝  ╚═════╝
#
#   Spring Boot • Java 17 • JAR • Port 8080
#   Pro-grade multi-stage + non-root + healthcheck + touche fuchsia ✦
# ==============================================================================

############################
# 1) Build stage (Maven)
############################
FROM maven:3.9.8-eclipse-temurin-17 AS build
WORKDIR /workspace

# Cache Maven (ultra important pour des builds rapides)
COPY pom.xml .
RUN mvn -q -e -DskipTests dependency:go-offline

# Build
COPY src ./src
RUN mvn -q -DskipTests clean package

############################
# 2) Runtime stage (JRE)
############################
FROM eclipse-temurin:17-jre-alpine AS runtime
WORKDIR /app

# Variables propres
ENV APP_PORT=8080
ENV JAVA_OPTS=""
ENV SPRING_PROFILES_ACTIVE=prod

# Curl pour healthcheck + tini pour gérer les signaux proprement
RUN apk add --no-cache curl tini

# User non-root (best practice)
RUN addgroup -S app && adduser -S app -G app

# Copie du JAR (build -> runtime)
# Le jar final est souvent dans target/*.jar
COPY --from=build /workspace/target/*.jar /app/app.jar

# Entry point avec touche fuchsia
COPY docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && chown -R app:app /app /entrypoint.sh

USER app

EXPOSE 8080

# Healthcheck: adapte si ton endpoint diffère (ex: /actuator/health)
HEALTHCHECK --interval=30s --timeout=3s --start-period=20s --retries=3 \
  CMD curl -fsS "http://127.0.0.1:${APP_PORT}/actuator/health" | grep -q "UP" || exit 1

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/entrypoint.sh"]
