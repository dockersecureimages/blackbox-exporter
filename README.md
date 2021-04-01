# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.9MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.18.0-alpine-3.13.4
2021/04/01 12:41:17 [INFO] ▶ Start clair-scanner
2021/04/01 12:41:17 [INFO] ▶ Server listening on port 9279
2021/04/01 12:41:17 [INFO] ▶ Analyzing e46e108285519ee26fa254dfaab29d7d350c0c321daa1350567c5202109138ca
2021/04/01 12:41:17 [INFO] ▶ Analyzing 7a80717c84fb7c12d3ef672b5aac2fc6d242963814777dc6680244bfcbcb7287
2021/04/01 12:41:17 [INFO] ▶ Analyzing 396df1a5a782cb5d87108f3cdaa4d340d5e9436cdb5f511662a994f8115248f8
2021/04/01 12:41:17 [WARN] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.4] contains 1 total vulnerabilities
2021/04/01 12:41:17 [ERRO] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.4] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/blackbox-exporter:0.18.0-alpine-3.13.4
2021-04-01T12:41:22.573Z        INFO    Need to update DB
2021-04-01T12:41:22.573Z        INFO    Downloading DB...
2021-04-01T12:41:25.333Z        INFO    Detecting Alpine vulnerabilities...
2021-04-01T12:41:25.334Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/blackbox-exporter:0.18.0-alpine-3.13.4 (alpine 3.13.4)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~20.9MB)

[https://hub.docker.com/r/prom/blackbox-exporter](https://hub.docker.com/r/prom/blackbox-exporter)
```
docker pull prom/blackbox-exporter:v0.18.0
```

Security scanning using Clair
```
clair-scanner prom/blackbox-exporter:v0.18.0
2021/04/01 12:41:30 [INFO] ▶ Start clair-scanner
2021/04/01 12:41:30 [INFO] ▶ Server listening on port 9279
2021/04/01 12:41:30 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2021/04/01 12:41:30 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2021/04/01 12:41:30 [INFO] ▶ Analyzing 4c376f9b3f24cff50fc06d46a7a22be64a64db26d6a9bcfb3cc1fa8f08411838
2021/04/01 12:41:30 [INFO] ▶ Analyzing 5ef00d9d832300a9484ff48bb94e05e9c5de9c0c81ca3d22af3caf6df07ee772
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/blackbox-exporter:v0.18.0
2021-04-01T12:41:34.717Z        INFO    Need to update DB
2021-04-01T12:41:34.717Z        INFO    Downloading DB...
2021-04-01T12:41:37.832Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-01T12:41:37.832Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
