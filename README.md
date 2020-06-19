# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~24.6MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.17.0-alpine-3.12.0
2020/06/19 21:33:13 [INFO] ▶ Start clair-scanner
2020/06/19 21:33:13 [INFO] ▶ Server listening on port 9279
2020/06/19 21:33:13 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 21:33:13 [INFO] ▶ Analyzing 8fb5eddbd060c3b5dcbb4350e3b089250b836a5a03521624575201a308f60f15
2020/06/19 21:33:13 [INFO] ▶ Analyzing bd5a42deae7ff4dbe1033b3abef5dbbd114bdee2759f04d1ee823905618c95ab
2020/06/19 21:33:13 [INFO] ▶ Image [secureimages/blackbox-exporter:0.17.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/blackbox-exporter:0.17.0-alpine-3.12.0
2020-06-19T18:33:18.933Z        INFO    Need to update DB
2020-06-19T18:33:18.933Z        INFO    Downloading DB...
2020-06-19T18:33:24.231Z        INFO    Detecting Alpine vulnerabilities...

secureimages/blackbox-exporter:0.17.0-alpine-3.12.0 (alpine 3.12.0)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~21.7MB)

[https://hub.docker.com/r/prom/blackbox-exporter](https://hub.docker.com/r/prom/blackbox-exporter)
```
docker pull prom/blackbox-exporter:v0.17.0
```

Security scanning using Clair
```
clair-scanner prom/blackbox-exporter:v0.17.0
2020/06/19 21:33:29 [INFO] ▶ Start clair-scanner
2020/06/19 21:33:30 [INFO] ▶ Server listening on port 9279
2020/06/19 21:33:30 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/06/19 21:33:30 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/06/19 21:33:30 [INFO] ▶ Analyzing a6a9134000cb7bd0d1a50a0e1b984ceedb3487d9dc0b9b5b68ac073a87183522
2020/06/19 21:33:30 [INFO] ▶ Analyzing a8aedcb3f0cf3caf967024b0db2cd29d2debea862c58822fc2a02cefbf64d5ad
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/blackbox-exporter:v0.17.0
2020-06-19T18:33:35.674Z        INFO    Need to update DB
2020-06-19T18:33:35.674Z        INFO    Downloading DB...
2020-06-19T18:33:41.374Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
