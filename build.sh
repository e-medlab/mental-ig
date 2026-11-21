#!/usr/bin/env bash
# Build the guide inside HL7's publisher image, which carries SUSHI, Jekyll and Java.
#
#   ./build.sh          SUSHI + IG Publisher -> output/index.html
#   ./build.sh sushi    SUSHI only (seconds)
#
# The IG Publisher version is pinned so a rebuild next month gives the same QA result.
set -euo pipefail
cd "$(dirname "$0")"

PUBLISHER_VERSION=3.0.4
JAR="input-cache/publisher-$PUBLISHER_VERSION.jar"
IMAGE=hl7fhir/ig-publisher-base:latest

if [[ "${1:-}" == "sushi" ]]; then
  docker run --rm -v "$PWD":/ig -w /ig "$IMAGE" sushi .
  exit 0
fi

mkdir -p input-cache
if [[ ! -f "$JAR" ]]; then
  echo "Downloading IG Publisher $PUBLISHER_VERSION (about 230 MB, once)"
  curl -fL --retry 3 -o "$JAR.part" \
    "https://github.com/HL7/fhir-ig-publisher/releases/download/$PUBLISHER_VERSION/publisher.jar"
  mv "$JAR.part" "$JAR"
fi

docker run --rm -v "$PWD":/ig -w /ig "$IMAGE" \
  java -Xmx4g -jar "/ig/$JAR" -ig /ig/ig.ini
echo "Open output/index.html; QA report: output/qa.html"
