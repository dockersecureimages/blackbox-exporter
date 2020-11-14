# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.8MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.18.0-alpine-3.12.1
2020/11/14 16:08:22 [INFO] ▶ Start clair-scanner
2020/11/14 16:08:23 [INFO] ▶ Server listening on port 9279
2020/11/14 16:08:23 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 16:08:23 [INFO] ▶ Analyzing 2f0fa24b7088177a09d3bc673438419b0bed86c914ef13624a035404b92003ec
2020/11/14 16:08:23 [INFO] ▶ Analyzing 2645b584dd681441567c1321cb028d16cba9ab1ae4cd62395ccc2e0ac7b0190d
2020/11/14 16:08:23 [INFO] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/blackbox-exporter:0.18.0-alpine-3.12.1
2020-11-14T16:08:28.210Z        INFO    Need to update DB
2020-11-14T16:08:28.210Z        INFO    Downloading DB...
2020-11-14T16:08:33.458Z        INFO    Detecting Alpine vulnerabilities...

secureimages/blackbox-exporter:0.18.0-alpine-3.12.1 (alpine 3.12.1)
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
2020/11/14 16:08:38 [INFO] ▶ Start clair-scanner
2020/11/14 16:08:38 [INFO] ▶ Server listening on port 9279
2020/11/14 16:08:38 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2020/11/14 16:08:39 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2020/11/14 16:08:39 [INFO] ▶ Analyzing 4c376f9b3f24cff50fc06d46a7a22be64a64db26d6a9bcfb3cc1fa8f08411838
2020/11/14 16:08:39 [INFO] ▶ Analyzing 5ef00d9d832300a9484ff48bb94e05e9c5de9c0c81ca3d22af3caf6df07ee772
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress prom/blackbox-exporter:v0.18.0
2020-11-14T16:08:43.323Z        INFO    Need to update DB
2020-11-14T16:08:43.324Z        INFO    Downloading DB...
2020-11-14T16:08:48.340Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
