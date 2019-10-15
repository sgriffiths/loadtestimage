# Load testing framework for Jmeter/blazemeter

This framework includes the files and configurations to build the load testing image so that jmeter jmx
scripts and datafiles can be run against

## Getting started

### Build:
Run docker build command to build the load test image
Eg:
```
docker build -t loadtestimage:v1 .
```

### Run:
docker run --entrypoint /app/localentrypoint.sh -v $pwd/load-tests/:/app/loadtest -v $pwd/../loadspec.yaml:/usr/local/loadspec.yaml --env-file .env loadtestimage:v1 .