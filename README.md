# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~22.7MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.16.0-alpine-3.11.6
2020/04/25 11:55:44 [INFO] ▶ Start clair-scanner
2020/04/25 11:55:44 [INFO] ▶ Server listening on port 9279
2020/04/25 11:55:44 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 11:55:44 [INFO] ▶ Analyzing 078484df38932244b15ca95a3f9bd953241f26d7413b313fc904e7bfb3f8a60a
2020/04/25 11:55:45 [INFO] ▶ Analyzing aae54120a664d77a4d685de7731a87892f08487052869a3b8582ba5a1e494e56
2020/04/25 11:55:45 [INFO] ▶ Image [secureimages/blackbox-exporter:0.16.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/blackbox-exporter:0.16.0-alpine-3.11.6
2020-04-25T08:55:51.324Z        INFO    Need to update DB
2020-04-25T08:55:51.324Z        INFO    Downloading DB...
2020-04-25T08:55:56.172Z        INFO    Detecting Alpine vulnerabilities...

secureimages/blackbox-exporter:0.16.0-alpine-3.11.6 (alpine 3.11.6)
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
2020/04/25 11:56:03 [INFO] ▶ Start clair-scanner
2020/04/25 11:56:03 [INFO] ▶ Server listening on port 9279
2020/04/25 11:56:03 [INFO] ▶ Analyzing 00cc10c3cdd4473c01bb6d54a089034ac7c5b1373d7ae464acdeacdc5c52b8fa
2020/04/25 11:56:03 [INFO] ▶ Analyzing a6d45c903c76322382f23f367f3f4f9c899cccac27029127b0312274c90a7d7f
2020/04/25 11:56:03 [INFO] ▶ Analyzing 035c87ca0ad8eb0e5ddcbb64cecd3f9cff101a56e8d2d39be62d2ad030c39947
2020/04/25 11:56:03 [INFO] ▶ Analyzing ee1f1b1fb193d42403e07d5943e3a1968d0980a35186dde9dd1141e9dacb9031
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress prom/blackbox-exporter:v0.16.0
2020-04-25T08:56:09.708Z        INFO    Need to update DB
2020-04-25T08:56:09.708Z        INFO    Downloading DB...
2020-04-25T08:56:14.615Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
