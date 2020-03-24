# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.16.0-alpine-3.11.5
2020/03/24 16:52:56 [INFO] ▶ Start clair-scanner
2020/03/24 16:52:56 [INFO] ▶ Server listening on port 9279
2020/03/24 16:52:56 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 16:52:56 [INFO] ▶ Analyzing 628bb23a032af86ac30b3bfd9688192a54509bb68f51952891984030ff301ad4
2020/03/24 16:52:56 [INFO] ▶ Analyzing cebe82e5338bbe0cfee7b22cad36cb94e23506d90c0c146a015e699710f454af
2020/03/24 16:52:56 [INFO] ▶ Image [secureimages/blackbox-exporter:0.16.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/blackbox-exporter:0.16.0-alpine-3.11.5
2020-03-24T14:53:01.348Z        INFO    Need to update DB
2020-03-24T14:53:01.348Z        INFO    Downloading DB...
2020-03-24T14:53:04.842Z        INFO    Reopening DB...
2020-03-24T14:53:05.801Z        INFO    Detecting Alpine vulnerabilities...

secureimages/blackbox-exporter:0.16.0-alpine-3.11.5 (alpine 3.11.5)
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
2020/03/24 16:53:10 [INFO] ▶ Start clair-scanner
2020/03/24 16:53:11 [INFO] ▶ Server listening on port 9279
2020/03/24 16:53:11 [INFO] ▶ Analyzing 00cc10c3cdd4473c01bb6d54a089034ac7c5b1373d7ae464acdeacdc5c52b8fa
2020/03/24 16:53:11 [INFO] ▶ Analyzing a6d45c903c76322382f23f367f3f4f9c899cccac27029127b0312274c90a7d7f
2020/03/24 16:53:11 [INFO] ▶ Analyzing 035c87ca0ad8eb0e5ddcbb64cecd3f9cff101a56e8d2d39be62d2ad030c39947
2020/03/24 16:53:11 [INFO] ▶ Analyzing ee1f1b1fb193d42403e07d5943e3a1968d0980a35186dde9dd1141e9dacb9031
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress prom/blackbox-exporter:v0.16.0
2020-03-24T14:53:19.330Z        INFO    Need to update DB
2020-03-24T14:53:19.331Z        INFO    Downloading DB...
2020-03-24T14:53:23.553Z        INFO    Reopening DB...
2020-03-24T14:53:24.070Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
