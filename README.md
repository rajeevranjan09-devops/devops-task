# DevOps Task - Node.js on Minikube

This project demonstrates a complete DevOps workflow:
1. **Build & Test** a Node.js application.
2. **Dockerize** the app using a lightweight `node:alpine` image.
3. **Deploy to Kubernetes** (Minikube) using manifests.
4. **Expose the app** via a Kubernetes Service.

---

## 🛠 Tech Stack
- **Node.js** (Application runtime)
- **Docker** (`node:alpine` base image)
- **Kubernetes** (Deployment & Service)
- **Minikube** (local Kubernetes cluster)
- **Jenkins** (optional CI/CD pipeline)

---

## 🚀 Setup Instructions

### 1. Start Minikube
```bash
minikube start

```mermaid 
flowchart TD
    A[Developer Code] --> B[Docker Build (node:alpine)]
    B --> C[Minikube Docker Daemon]
    C --> D[Kubernetes Deployment]
    D --> E[Pod Running Node.js App]
    E --> F[Kubernetes Service (NodePort)]
    F --> G[User Access via Minikube Service URL]
