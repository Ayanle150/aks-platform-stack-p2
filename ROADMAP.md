# Project 2 Roadmap (Platform / DevOps)

## Phase 1 — Local foundation
- [ ] Repo structure
- [ ] Minimal API (FastAPI)
- [ ] Docker build + run
- [ ] Local Kubernetes (kind/k3d) deploy

## Phase 2 — Infrastructure as Code (Terraform)
- [ ] Remote state
- [ ] Network module
- [ ] ACR module
- [ ] AKS module
- [ ] Environments: dev/prod

## Phase 3 — Kubernetes platform
- [ ] Namespace strategy
- [ ] Helm chart for app
- [ ] Ingress
- [ ] ConfigMap + Secret
- [ ] HPA + resource limits
- [ ] Probes (liveness/readiness)

## Phase 4 — CI/CD
- [ ] Build + test
- [ ] Build/push image to ACR
- [ ] Deploy to AKS (Helm)
- [ ] Rollback strategy

## Phase 5 — Security & Ops
- [ ] RBAC + least privilege
- [ ] Secret handling improvements
- [ ] Basic observability (logs/metrics)
- [ ] Runbook + troubleshooting guide

## Phase 6 — Portfolio packaging
- [ ] Architecture diagram
- [ ] Screenshots + demo steps
- [ ] Interview talking points
