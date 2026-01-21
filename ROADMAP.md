# Project roadmap — Platform / DevOps

## Phase 1 — Local foundation
- [x] Repo structure
- [x] Minimal API (FastAPI)
- [x] Docker build + run
- [x] Local Kubernetes (k3d) deployment

## Phase 2 — Infrastructure as Code (Terraform)
- [ ] Remote state
- [ ] Network baseline (VNet, subnets, ingress)
- [ ] ACR module
- [ ] AKS module
- [ ] Environment separation (dev/stage/prod)

## Phase 3 — Kubernetes platform
- [x] Helm chart for application
- [x] Ingress routing
- [x] Resource limits and probes
- [x] Autoscaling (HPA)
- [ ] Namespace strategy
- [ ] ConfigMaps and Secrets

## Phase 4 — CI/CD
- [x] Build and test pipelines
- [x] Docker image workflow
- [ ] OIDC GitHub → Azure authentication
- [ ] Build and push to ACR
- [ ] Deploy to AKS (Helm)
- [ ] Rollback strategy

## Phase 5 — Security & operations
- [ ] RBAC and least privilege
- [ ] Secrets management improvements
- [ ] Basic observability (logs/metrics)
- [ ] Runbook and troubleshooting guide

## Phase 6 — Portfolio packaging
- [x] Architecture documentation
- [ ] Final architecture diagram
- [ ] Screenshots and demo steps
- [ ] Interview talking points
