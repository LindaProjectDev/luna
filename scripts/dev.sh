#!/usr/bin/env bash
set -euo pipefail

mvn -q clean test
mvn -q spring-boot:run
