🚀 CI/CD Pipeline for Java Web Application

Automated CI/CD pipeline that builds, tests, and deploys Java web applications to Kubernetes using GitOps principles.
Result: Reduced deployment time from 45 minutes to 5 minutes (85% improvement)
Architecture
<img width="10666" height="2768" alt="Untitled diagram-2025-12-16-064015" src="https://github.com/user-attachments/assets/d07bd380-4940-4d06-84ee-44e33e468a55" />

Tech Stack
Jenkins | Maven | Docker | Kubernetes | ArgoCD | SonarQube | Tomcat | Java 11
Quick Start
bash
# Clone repository
git clone https://github.com/nathirkasim/jenkins-pipeline.git
# Start Minikube
minikube start --driver=docker --cpus=4 --memory=4096
# Install ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# Access application after deployment
http://localhost:30007

Pipeline Stages
Checkout - Pull code from GitHub
Build - Maven package
Analysis - SonarQube code quality
Containerize - Build Docker image
Publish - Push to Docker Hub
Deploy - Update K8s manifests (GitOps)

📖 Full Documentation
See documentation.docx for:
Complete installation guide
Jenkins & ArgoCD configuration
Troubleshooting common issues
Security best practices
Performance optimization

Author
Nathirul Mubeen M
GitHub: @nathirkasim
⭐ Star this repo | 📚 Read documentation.docx for details
