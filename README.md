# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.16.0-alpine-3.11.3
2020/01/20 21:50:54 [INFO] ▶ Start clair-scanner
2020/01/20 21:50:55 [INFO] ▶ Server listening on port 9279
2020/01/20 21:50:55 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 21:50:55 [INFO] ▶ Analyzing 657eb7011c927dd991b85a8e5d861d85b95103969e6e8935e9ad98630ae3c56f
2020/01/20 21:50:55 [INFO] ▶ Analyzing fe783341652afdf37efffff6dab4b57c03f85c99bb16ffde4f59ea0cc1c36a0f
2020/01/20 21:50:55 [INFO] ▶ Image [secureimages/blackbox-exporter:0.16.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/blackbox-exporter:0.16.0-alpine-3.11.3
2020-01-20T19:51:10.806Z        INFO    Need to update DB
2020-01-20T19:51:10.806Z        INFO    Downloading DB...
2020-01-20T19:51:14.873Z        INFO    Reopening DB...
2020-01-20T19:51:15.625Z        INFO    Detecting Alpine vulnerabilities...

secureimages/blackbox-exporter:0.16.0-alpine-3.11.3 (alpine 3.11.3)
===================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/prom/blackbox-exporter](https://hub.docker.com/r/prom/blackbox-exporter)
```
docker pull prom/blackbox-exporter:v0.16.0
```

Security scanning using Clair
```
clair-scanner prom/blackbox-exporter:v0.16.0
2020/01/20 21:51:35 [INFO] ▶ Start clair-scanner
2020/01/20 21:51:35 [INFO] ▶ Server listening on port 9279
2020/01/20 21:51:35 [INFO] ▶ Analyzing 00cc10c3cdd4473c01bb6d54a089034ac7c5b1373d7ae464acdeacdc5c52b8fa
2020/01/20 21:51:35 [INFO] ▶ Analyzing a6d45c903c76322382f23f367f3f4f9c899cccac27029127b0312274c90a7d7f
2020/01/20 21:51:35 [INFO] ▶ Analyzing 035c87ca0ad8eb0e5ddcbb64cecd3f9cff101a56e8d2d39be62d2ad030c39947
2020/01/20 21:51:35 [INFO] ▶ Analyzing ee1f1b1fb193d42403e07d5943e3a1968d0980a35186dde9dd1141e9dacb9031
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress prom/blackbox-exporter:v0.16.0
2020-01-20T19:51:51.416Z        INFO    Need to update DB
2020-01-20T19:51:51.416Z        INFO    Downloading DB...
2020-01-20T19:51:55.107Z        INFO    Reopening DB...
2020-01-20T19:51:55.551Z        FATAL   error in image scan: failed to scan the image: failed to analyze OS: Unknown OS
```
