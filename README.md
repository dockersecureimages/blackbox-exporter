# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.8MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.19.0-alpine-3.14.1
2021/08/24 09:30:05 [INFO] ▶ Start clair-scanner
2021/08/24 09:30:06 [INFO] ▶ Server listening on port 9279
2021/08/24 09:30:06 [INFO] ▶ Analyzing 11cbe68173689fb732863a26e9c9217da15b278edc951dcae1effb426247f521
2021/08/24 09:30:06 [INFO] ▶ Analyzing 9619a0b9355e2548eec0e35209e7ab67106e5450fc407a049968123b978f9f6c
2021/08/24 09:30:06 [INFO] ▶ Analyzing 53e0f9bcb4b37b111fa1f3024b71d9cabc070ffeacdc57168dac8c383b88c697
2021/08/24 09:30:06 [WARN] ▶ Image [secureimages/blackbox-exporter:0.19.0-alpine-3.14.1] contains 1 total vulnerabilities
2021/08/24 09:30:06 [ERRO] ▶ Image [secureimages/blackbox-exporter:0.19.0-alpine-3.14.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress secureimages/blackbox-exporter:0.19.0-alpine-3.14.1
2021-08-24T09:30:11.158Z        INFO    Need to update DB
2021-08-24T09:30:11.158Z        INFO    Downloading DB...
2021-08-24T09:30:14.062Z        INFO    Detected OS: alpine
2021-08-24T09:30:14.062Z        INFO    Detecting Alpine vulnerabilities...
2021-08-24T09:30:14.062Z        INFO    Number of language-specific files: 1
2021-08-24T09:30:14.062Z        INFO    Detecting gobinary vulnerabilities...

secureimages/blackbox-exporter:0.19.0-alpine-3.14.1 (alpine 3.14.1)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


bin/blackbox_exporter (gobinary)
================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~20.9MB)

[https://hub.docker.com/r/prom/blackbox-exporter](https://hub.docker.com/r/prom/blackbox-exporter)
```
docker pull prom/blackbox-exporter:v0.19.0
```

Security scanning using Clair
```
clair-scanner prom/blackbox-exporter:v0.19.0
2021/08/24 09:30:20 [INFO] ▶ Start clair-scanner
2021/08/24 09:30:20 [INFO] ▶ Server listening on port 9279
2021/08/24 09:30:20 [INFO] ▶ Analyzing ccdc8d17c85badb2d49ffd2e13a368677b69bdb27ef6080b968472ad81342ece
2021/08/24 09:30:20 [INFO] ▶ Analyzing 3e11f1a7fb6fffaeac4f8008521afeeb60ef96697a8b9bcb90fe67ee6279ae45
2021/08/24 09:30:20 [INFO] ▶ Analyzing cfdc90a999f8fb913950d2823b4cba6a23ac9d2c46ee36f791342c1b2c8cd8ba
2021/08/24 09:30:20 [INFO] ▶ Analyzing 98d8e27c3c587a7d848481f4c05561662dd205ad884158b2e8acb029ded26e18
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress prom/blackbox-exporter:v0.19.0
2021-08-24T09:30:25.650Z        INFO    Need to update DB
2021-08-24T09:30:25.650Z        INFO    Downloading DB...
2021-08-24T09:30:29.078Z        INFO    Number of language-specific files: 1
2021-08-24T09:30:29.078Z        INFO    Detecting gobinary vulnerabilities...

bin/blackbox_exporter (gobinary)
================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
