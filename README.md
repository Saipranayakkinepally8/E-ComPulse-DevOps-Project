# 🚀 E-ComPulse | DevOps Project

Welcome to the **E-ComPulse** DevOps project — a production-ready, cloud-native microservice deployment pipeline that integrates **Docker**, **Kubernetes**, **Terraform**, **AWS EKS**, and **GitHub Actions CI/CD**. This project demonstrates how modern DevOps practices can be used to build, containerize, deploy, and manage scalable applications in the cloud.

---

## 📁 Project Structure

E-ComPulse-DevOps-Project/
│
├── Application/
│ └── kyc-service/ # Node.js microservice for KYC logic with Dockerfile
│
├── K8s/
│ └── kyc-service/ # Kubernetes Deployment and Service YAMLs
│
├── Terraform/
│ ├── environments/dev/ # Environment-specific infra setup for EKS
│ └── modules/ # Custom Terraform modules for VPC and EKS
│
├── .github/
│ └── workflows/ # GitHub Actions CI workflow for Docker image build & push
│
├── ingress.yaml # Ingress resource for routing traffic to services
├── .gitignore # Git ignore rules for Terraform, Node, Docker, etc.
└── README.md 


---

## 🌐 Technologies Used

- **Cloud:** AWS (EKS, IAM, VPC, S3)
- **Infrastructure as Code:** Terraform
- **Containers:** Docker
- **Orchestration:** Kubernetes (EKS)
- **CI/CD:** GitHub Actions
- **Application:** Node.js (Express.js based KYC service)

---

## ⚙️ Workflow Overview

1. ✅ **Node.js App** built and tested locally
2. 🐳 **Dockerized** using a multi-stage Dockerfile
3. 🔁 **CI/CD pipeline** (GitHub Actions) builds and pushes the image to Docker Hub
4. ☁️ **Terraform** provisions AWS EKS cluster, VPC, IAM roles, and networking
5. 📦 **Kubernetes Manifests** deploy app on EKS with NodePort service
6. 🌍 **Ingress** routes external traffic to service

---

## 🚀 How to Deploy

### 1. Clone This Repository
```bash
git clone https://github.com/Saipranayakkinepally8/E-ComPulse-DevOps-Project.git
cd E-ComPulse-DevOps-Project
🛡️ Security & Best Practices
.terraform directories ignored via .gitignore

No secrets committed — use AWS Secrets Manager / K8s secrets

Modularized and reusable Terraform structure

Follows GitHub Actions CI/CD best practices

🙋‍♂️ Author
Saipranay Akkinepally
📫 LinkedIn:www.linkedin.com/in/saipranay-akkinepally-devops
🐙 GitHub: https://github.com/Saipranayakkinepally8

⭐ Star This Repo
If you found this helpful, consider starring 🌟 the repo. It motivates and helps others find this project!

