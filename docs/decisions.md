# Architecture decisions

This document captures key engineering decisions for the DevOps Platform Stack project.

## ADR-001: Use GitHub Actions for CI/CD
**Decision:** Use GitHub Actions as the CI/CD engine for builds, tests and delivery workflows.  
**Rationale:** Tight integration with the repository, simple audit trail, and strong ecosystem for Docker/Kubernetes workflows.  
**Status:** Implemented (CI + Docker build workflows).

## ADR-002: Containerize the application with Docker
**Decision:** Package the API as a Docker image and standardize build steps.  
**Rationale:** Reproducible builds, consistent runtime across environments, and a clean handoff to Kubernetes.  
**Status:** Implemented (Dockerfile + CI Docker build).

## ADR-003: Target AKS for orchestration
**Decision:** Use Azure Kubernetes Service (AKS) as the target runtime for workloads.  
**Rationale:** Managed control plane, Azure-native integration (ACR, RBAC), and production-relevant deployment patterns.  
**Status:** In progress (Terraform foundation committed, manifests/Helm prepared).

## ADR-004: Provision infrastructure with Terraform
**Decision:** Use Terraform for infrastructure as code.  
**Rationale:** Reproducible infra, version control, modularity, and environment separation (dev/stage/prod).  
**Status:** Implemented baseline (dev env). Next: remote state + environments.

## ADR-005: Prefer OIDC over long-lived secrets for CI authentication
**Decision:** Use GitHub Actions OIDC (federated credentials) for Azure authentication.  
**Rationale:** Eliminates long-lived secrets, reduces blast radius, aligns with enterprise best practices.  
**Status:** Planned (blocked by restricted student tenant; will be enabled in personal Azure subscription).

## ADR-006: Use Helm for application release configuration
**Decision:** Maintain a Helm chart for the application (service + ingress + values).  
**Rationale:** Environment-specific configuration, repeatable releases, cleaner Kubernetes manifests.  
**Status:** Implemented (chart templates updated). Next: release values per environment.

## ADR-007: Ingress as the entry point
**Decision:** Use an ingress resource/controller to expose services externally.  
**Rationale:** Standard Kubernetes routing, TLS termination, and future readiness for multiple services/domains.  
**Status:** Implemented (ingress manifest committed). Next: controller + DNS/TLS in cloud.
