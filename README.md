# docker-hello-app

A simple Flask app, dockerized, with a GitHub Actions CI/CD pipeline 
that automatically builds and pushes the image to GitHub Container Registry (GHCR).

## Run locally
docker pull ghcr.io/sudhamayadav/docker-hello-app:latest
docker run -d -p 5000:5000 ghcr.io/sudhamayadav/docker-hello-app:latest
