# `toocla-machine-parameters`: Laser Machine Parameters Platform

## Table of Contents

1. [Introduction](#introduction)
2. [Setup and Installation](#setup-and-installation)
3. [Docker Integration](#docker-integration)
4. [Automated Deployment with GitHub Actions](#automated-deployment-with-github-actions)
5. [Support and Feedback](#support-and-feedback)

## Introduction

`toocla-machine-parameters` is a platform designed to provide laser machine parameters settings. It serves a static HTML page with settings for a laser cutter machine.

## Setup and Installation

### Pre-requisites

Ensure Docker is installed on your system.

### Steps

1. **Clone the repository**:
```
git clone https://github.com/proto-x-app/toocla-machine-parameters.git
```

2. **Build the Docker image**:
```
docker build -t toocla-machine-parameters .
```

3. **Run the Docker container**:
```
docker run --rm -it -p 80:80 toocla-machine-parameters
```

4. **Access the Web Interface**: Open your browser and navigate to `http://localhost`.

## Docker Integration

This project is primarily containerized using Docker. The Docker setup uses `alpine:3.18.4` as the base image to serve the web content.

## Automated Deployment with GitHub Actions

Whenever a new tag is pushed to the repository, the GitHub Actions workflow defined in `.github/workflows/docker-ci.yml` automatically builds the Docker image and pushes it to Docker Hub. 

To trigger a new build and deployment, simply add and push a new git tag:

```
git tag v<new-version-number>
git push origin v<new-version-number>
```

This will initiate the GitHub Actions workflow and deploy the updated Docker image.

## Support and Feedback

If you encounter any issues or have suggestions for improvements, please open an issue in the repository.
