# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.8MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.18.0-alpine-3.12.3
2021/01/11 09:24:13 [INFO] ▶ Start clair-scanner
2021/01/11 09:24:13 [INFO] ▶ Server listening on port 9279
2021/01/11 09:24:13 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/01/11 09:24:13 [INFO] ▶ Analyzing 4cf00bfd4705d41ca70fb3317d0f8d7181a1146d1fc36050f2ed6f2f718b4f00
2021/01/11 09:24:13 [INFO] ▶ Analyzing 955393f7284ddefc42ec496e9d8cd166869894985800cf7da71152c35f541590
2021/01/11 09:24:13 [INFO] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.12.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress secureimages/blackbox-exporter:0.18.0-alpine-3.12.3
2021-01-11T09:24:45.868Z        INFO    Need to update DB
2021-01-11T09:24:45.868Z        INFO    Downloading DB...
2021-01-11T09:24:51.099Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:24:51.099Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/blackbox-exporter:0.18.0-alpine-3.12.3 (alpine 3.12.3)
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
2021/01/11 09:24:56 [INFO] ▶ Start clair-scanner
2021/01/11 09:24:56 [INFO] ▶ Server listening on port 9279
2021/01/11 09:24:56 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2021/01/11 09:24:56 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2021/01/11 09:24:57 [INFO] ▶ Analyzing 4c376f9b3f24cff50fc06d46a7a22be64a64db26d6a9bcfb3cc1fa8f08411838
2021/01/11 09:24:57 [INFO] ▶ Analyzing 5ef00d9d832300a9484ff48bb94e05e9c5de9c0c81ca3d22af3caf6df07ee772
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress prom/blackbox-exporter:v0.18.0
2021-01-11T09:25:06.350Z        INFO    Need to update DB
2021-01-11T09:25:06.350Z        INFO    Downloading DB...
2021-01-11T09:25:11.436Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-01-11T09:25:11.436Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
