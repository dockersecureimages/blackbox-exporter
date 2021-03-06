# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.9MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.18.0-alpine-3.13.5
2021/04/16 08:26:44 [INFO] ▶ Start clair-scanner
2021/04/16 08:26:44 [INFO] ▶ Server listening on port 9279
2021/04/16 08:26:44 [INFO] ▶ Analyzing d09376239d873ace0c02b1b53834f0fe3167a652a8fc436465db0171eb639b61
2021/04/16 08:26:44 [INFO] ▶ Analyzing c9134995395d7ec4ba5baf50d9672d6aac0266b42b47938ba0e19c70d38f332d
2021/04/16 08:26:44 [INFO] ▶ Analyzing 5cdd991dceae66ecc836bc2d2d64891ec3cbb493e0782cbb2a898929658895c6
2021/04/16 08:26:44 [WARN] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.5] contains 1 total vulnerabilities
2021/04/16 08:26:44 [ERRO] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.5] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/blackbox-exporter:0.18.0-alpine-3.13.5
2021-04-16T08:26:49.675Z        INFO    Need to update DB
2021-04-16T08:26:49.675Z        INFO    Downloading DB...
2021-04-16T08:26:52.526Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:26:52.526Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/blackbox-exporter:0.18.0-alpine-3.13.5 (alpine 3.13.5)
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
2021/04/16 08:26:57 [INFO] ▶ Start clair-scanner
2021/04/16 08:26:57 [INFO] ▶ Server listening on port 9279
2021/04/16 08:26:57 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2021/04/16 08:26:57 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2021/04/16 08:26:57 [INFO] ▶ Analyzing 4c376f9b3f24cff50fc06d46a7a22be64a64db26d6a9bcfb3cc1fa8f08411838
2021/04/16 08:26:58 [INFO] ▶ Analyzing 5ef00d9d832300a9484ff48bb94e05e9c5de9c0c81ca3d22af3caf6df07ee772
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/blackbox-exporter:v0.18.0
2021-04-16T08:27:05.001Z        INFO    Need to update DB
2021-04-16T08:27:05.001Z        INFO    Downloading DB...
2021-04-16T08:27:08.709Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-16T08:27:08.709Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
