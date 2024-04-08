# WebDNA Sample  

Barebones development environment for WebDNA.

## Prerequisites
- Docker Desktop or any type of Docker runtime with docker-compose

## Instructions  
### Setting up a dev environment
Navigate to the root of the repository and run
```
docker compose up -d
```
Then visit [http://localhost/index.dna](http://localhost/index.dna)
### To build a standalone image
```
docker build -t <name> .
```


