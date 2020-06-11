# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~22.6MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.16.0-alpine-3.12.0
2020/06/11 13:49:59 [INFO] ▶ Start clair-scanner
2020/06/11 13:49:59 [INFO] ▶ Server listening on port 9279
2020/06/11 13:49:59 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 13:49:59 [INFO] ▶ Analyzing f2e9afd88cdcc06de5429529212fae82f4272a81ee91ebe3ce049810debd2983
2020/06/11 13:49:59 [INFO] ▶ Analyzing 451680283e0b0bd3a87cc356f77ae0ea4f6542aa16147a92f971cf5ab05f51f1
2020/06/11 13:49:59 [INFO] ▶ Image [secureimages/blackbox-exporter:0.16.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/blackbox-exporter:0.16.0-alpine-3.12.0
2020-06-11T10:50:07.607Z        INFO    Need to update DB
2020-06-11T10:50:07.607Z        INFO    Downloading DB...
2020-06-11T10:50:11.652Z        INFO    Detecting Alpine vulnerabilities...

secureimages/blackbox-exporter:0.16.0-alpine-3.12.0 (alpine 3.12.0)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~19.7MB)

[https://hub.docker.com/r/prom/blackbox-exporter](https://hub.docker.com/r/prom/blackbox-exporter)
```
docker pull prom/blackbox-exporter:v0.16.0
```

Security scanning using Clair
```
clair-scanner prom/blackbox-exporter:v0.16.0
2020/06/11 13:50:16 [INFO] ▶ Start clair-scanner
2020/06/11 13:50:16 [INFO] ▶ Server listening on port 9279
2020/06/11 13:50:16 [INFO] ▶ Analyzing 00cc10c3cdd4473c01bb6d54a089034ac7c5b1373d7ae464acdeacdc5c52b8fa
2020/06/11 13:50:16 [INFO] ▶ Analyzing a6d45c903c76322382f23f367f3f4f9c899cccac27029127b0312274c90a7d7f
2020/06/11 13:50:16 [INFO] ▶ Analyzing 035c87ca0ad8eb0e5ddcbb64cecd3f9cff101a56e8d2d39be62d2ad030c39947
2020/06/11 13:50:16 [INFO] ▶ Analyzing ee1f1b1fb193d42403e07d5943e3a1968d0980a35186dde9dd1141e9dacb9031
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/blackbox-exporter:v0.16.0
2020-06-11T10:50:23.009Z        INFO    Need to update DB
2020-06-11T10:50:23.009Z        INFO    Downloading DB...
2020-06-11T10:50:28.279Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
