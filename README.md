# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.8MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.18.0-alpine-3.12.0
2020/10/15 19:37:46 [INFO] ▶ Start clair-scanner
2020/10/15 19:37:46 [INFO] ▶ Server listening on port 9279
2020/10/15 19:37:46 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/15 19:37:46 [INFO] ▶ Analyzing 27d926f6fa837c633b283773f0b7a349fc0aef102e814aa5b2ee916e1b6bf8fa
2020/10/15 19:37:46 [INFO] ▶ Analyzing 8c5c20673b69d4d787a0a117b11f67aa5aaeda8f9b15bb59c8f685f887f358d5
2020/10/15 19:37:46 [INFO] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/blackbox-exporter:0.18.0-alpine-3.12.0
2020-10-15T19:37:52.030Z        INFO    Need to update DB
2020-10-15T19:37:52.030Z        INFO    Downloading DB...
2020-10-15T19:38:23.527Z        INFO    Detecting Alpine vulnerabilities...

secureimages/blackbox-exporter:0.18.0-alpine-3.12.0 (alpine 3.12.0)
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
2020/10/15 19:38:30 [INFO] ▶ Start clair-scanner
2020/10/15 19:38:30 [INFO] ▶ Server listening on port 9279
2020/10/15 19:38:30 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2020/10/15 19:38:30 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2020/10/15 19:38:30 [INFO] ▶ Analyzing 4c376f9b3f24cff50fc06d46a7a22be64a64db26d6a9bcfb3cc1fa8f08411838
2020/10/15 19:38:30 [INFO] ▶ Analyzing 5ef00d9d832300a9484ff48bb94e05e9c5de9c0c81ca3d22af3caf6df07ee772
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress prom/blackbox-exporter:v0.18.0
2020-10-15T19:38:38.210Z        INFO    Need to update DB
2020-10-15T19:38:38.210Z        INFO    Downloading DB...
2020-10-15T19:39:16.748Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
