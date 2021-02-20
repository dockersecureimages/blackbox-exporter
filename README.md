# Blackbox exporter

Blackbox exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~23.9MB)

Security scanning using Clair
```
clair-scanner secureimages/blackbox-exporter:0.18.0-alpine-3.13.2
2021/02/20 14:51:04 [INFO] ▶ Start clair-scanner
2021/02/20 14:51:05 [INFO] ▶ Server listening on port 9279
2021/02/20 14:51:05 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 14:51:05 [INFO] ▶ Analyzing 9e83b288045fbe15d696301228e5259a80dfa0acaa99aa6dec2e4c0dd09b5a0d
2021/02/20 14:51:05 [INFO] ▶ Analyzing 4c42218cda74666ab996b852eadb367d8dbd70c84780bf4a9478ce3e5a5449b5
2021/02/20 14:51:05 [WARN] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 14:51:05 [ERRO] ▶ Image [secureimages/blackbox-exporter:0.18.0-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/blackbox-exporter:0.18.0-alpine-3.13.2
2021-02-20T14:51:09.868Z        INFO    Need to update DB
2021-02-20T14:51:09.868Z        INFO    Downloading DB...
2021-02-20T14:51:14.061Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T14:51:14.062Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/blackbox-exporter:0.18.0-alpine-3.13.2 (alpine 3.13.2)
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
2021/02/20 14:51:19 [INFO] ▶ Start clair-scanner
2021/02/20 14:51:19 [INFO] ▶ Server listening on port 9279
2021/02/20 14:51:19 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2021/02/20 14:51:19 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2021/02/20 14:51:19 [INFO] ▶ Analyzing 4c376f9b3f24cff50fc06d46a7a22be64a64db26d6a9bcfb3cc1fa8f08411838
2021/02/20 14:51:19 [INFO] ▶ Analyzing 5ef00d9d832300a9484ff48bb94e05e9c5de9c0c81ca3d22af3caf6df07ee772
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/blackbox-exporter:v0.18.0
2021-02-20T14:51:25.763Z        INFO    Need to update DB
2021-02-20T14:51:25.763Z        INFO    Downloading DB...
2021-02-20T14:51:29.517Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-02-20T14:51:29.517Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
