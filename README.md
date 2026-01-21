# Project 2 — Platform Engineering (Kubernetes + Helm)

Production-style platform project demonstrating how to run and operate a containerized API on Kubernetes with
Helm, ingress routing, health probes, resource limits and autoscaling (HPA). This repo is built to mirror
real platform/devops workflows before moving the same workload to cloud (AKS) using Terraform + CI/CD.

## What’s inside
- **FastAPI service** (minimal API) containerized with Docker
- **Kubernetes** deployment via **Helm chart**
- **Ingress** routing (Traefik locally)
- **Health probes** (readiness/liveness)
- **Resource limits/requests**
- **Autoscaling** via **HPA**
- *(Next)* Terraform provisioning + GitHub Actions CI/CD to AKS

## Repository structure
- `app/` — FastAPI source + Dockerfile
- `project2-api/` — Helm chart (single source of truth for k8s resources)
- `docs/` — architecture + runbook (WIP)
- `infra/` — Terraform (WIP)
- `cicd/` — pipelines (WIP)

## 📚 Project documentation
-  [Platform architecture](docs/architecture.md)  
-  [Architecture decisions](docs/decisions.md)  
-  Kubernetes manifests and Helm charts in `/k8s` and `/project2-api`  
-  Terraform infrastructure in `/infra/terraform`  
-  CI/CD workflows in `/.github/workflows`

##  Architecture diagram
See the rendered diagram in `docs/architecture.md` (Mermaid).

##  Platform maturity
This repository is structured as a real platform engineering project.

Implemented:
- CI pipelines (build + docker)
- Containerized application
- Terraform AKS foundation
- Helm charts and ingress manifests
- Architecture documentation

In progress / planned:
- OIDC GitHub → Azure authentication
- ACR integration
- Automated deployments
- Observability and secrets management

##  Security model
- Identity-based authentication (OIDC) for CI/CD  
- No long-lived secrets in pipelines  
- Azure RBAC and least-privilege access  
- Infrastructure defined and reviewed as code  

## Prerequisites (local)
- Docker
- k3d
- kubectl
- helm
- macOS: ability to edit `/etc/hosts` (for local domain)

Install tools (Homebrew):
```bash
brew install k3d kubectl helm

Run locally (k3d + Helm)
1) Build the image
cd app
docker build -t project2-api:local .
cd ..

2) Create cluster with ingress port mapping
k3d cluster create p2 --agents 1 -p "8080:80@loadbalancer" -p "8443:443@loadbalancer"
k3d image import project2-api:local -c p2

3) Local DNS entry
sudo sh -c 'echo "127.0.0.1 project2.local" >> /etc/hosts'

4) Deploy with Helm
helm upgrade --install project2-api ./project2-api --namespace p2 --create-namespace

5) Test

http://project2.local:8080/health

http://project2.local:8080/docs

Verify autoscaling
kubectl -n p2 get hpa

Operational notes

The Helm chart is the single source of truth for Kubernetes resources.

Local ingress is handled by Traefik shipped with k3d/k3s.

Next steps will add: Terraform remote state, AKS provisioning, container registry, and CI/CD deploy.

Roadmap

See ROADMAP.md.
