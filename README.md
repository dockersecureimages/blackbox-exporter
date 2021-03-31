# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.9MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.18.0-alpine-3.13.3
2021/03/31 09:16:27 [INFO] ▶ Start clair-scanner
2021/03/31 09:16:27 [INFO] ▶ Server listening on port 9279
2021/03/31 09:16:27 [INFO] ▶ Analyzing 7d89ae2c30338875fa3a10be99c984f80dac89b1527ef8115ca77d7fd8eeef92
2021/03/31 09:16:27 [INFO] ▶ Analyzing 235dc0031ad62b7eb827d280fb7deeefd12705c45c9031c557d1390fc797770c
2021/03/31 09:16:27 [INFO] ▶ Analyzing 9c68596f08e81deef069d6cde33fee9c9bceb72a6d118902b342371355431eaa
2021/03/31 09:16:27 [WARN] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.3] contains 2 total vulnerabilities
2021/03/31 09:16:27 [ERRO] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.3] contains 2 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/blackbox-exporter:0.18.0-alpine-3.13.3
2021-03-31T09:16:33.873Z        INFO    Need to update DB
2021-03-31T09:16:33.873Z        INFO    Downloading DB...
2021-03-31T09:16:36.650Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T09:16:36.651Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/blackbox-exporter:0.18.0-alpine-3.13.3 (alpine 3.13.3)
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
2021/03/31 09:16:41 [INFO] ▶ Start clair-scanner
2021/03/31 09:16:42 [INFO] ▶ Server listening on port 9279
2021/03/31 09:16:42 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2021/03/31 09:16:42 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2021/03/31 09:16:42 [INFO] ▶ Analyzing 4c376f9b3f24cff50fc06d46a7a22be64a64db26d6a9bcfb3cc1fa8f08411838
2021/03/31 09:16:42 [INFO] ▶ Analyzing 5ef00d9d832300a9484ff48bb94e05e9c5de9c0c81ca3d22af3caf6df07ee772
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/blackbox-exporter:v0.18.0
2021-03-31T09:16:46.956Z        INFO    Need to update DB
2021-03-31T09:16:46.956Z        INFO    Downloading DB...
2021-03-31T09:16:50.604Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-03-31T09:16:50.604Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
