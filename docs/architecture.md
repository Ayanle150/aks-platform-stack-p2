# Architecture

## Overview
(Insert diagram here)

## Components
- API service (containerized)
- Kubernetes (AKS)
- Ingress
- Container Registry (ACR)
- CI/CD (GitHub Actions)
- Terraform (remote state + modules)

## Environments
- dev
- prod

## Security notes
- RBAC
- Secrets/Config separation
- Resource limits + probes
