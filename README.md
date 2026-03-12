# Automated Cloud Resume Deployment (AWS + CI/CD + HTTPS)

🚀 **Live Demo:** [https://marianpavlos.me](https://marianpavlos.me)

## 📌 Project Overview
This repository contains the source code and CI/CD configuration for my personal resume website. The project demonstrates practical, hands-on skills in cloud infrastructure provisioning, Linux system administration, DNS management, and automated deployment processes.

## 🛠️ Technology Stack
* **Cloud Provider:** AWS (Amazon Web Services)
* **Compute:** EC2 Instance (Ubuntu Linux)
* **Web Server:** Apache2
* **Domain & DNS:** Namecheap (Custom Domain Routing)
* **Security (SSL/TLS):** Let's Encrypt & Certbot (HTTPS)
* **CI/CD:** GitHub Actions
* **Version Control:** Git & GitHub

## ⚙️ Architecture & Workflow
1. **Local Development:** Code updates (HTML/CSS) are made locally and pushed to the `main` branch on GitHub.
2. **Continuous Integration:** GitHub Actions detects the `push` event and triggers the automated deployment workflow.
3. **Continuous Deployment:** The pipeline securely connects to the AWS EC2 instance via SSH using encrypted GitHub Secrets (`appleboy/scp-action`).
4. **Hosting & Routing:** The updated files are deployed directly to the `/var/www/html` directory. Traffic is routed via custom DNS A-records, and the Apache web server serves the content globally.

## 🔒 Security Measures Implemented
* **SSL/TLS Encryption:** Automated certificate issuance and renewal via Let's Encrypt (Certbot), ensuring all traffic is forced over HTTPS.
* **Firewall Rules:** Configured strict AWS Security Group rules (allowing inbound traffic only on ports 22 for SSH, 80 for HTTP, and 443 for HTTPS).
* **Credential Management:** Sensitive credentials (Server IP, Username, SSH Private Key) are securely stored in GitHub Secrets, preventing exposure.
* **Access Control:** Set up appropriate directory ownership and permissions (`chown`) on the Linux server for secure automated access.

## 👨‍💻 About the Author
Targeting roles as a **Junior System Administrator / Network Engineer**. 
This project was built to apply theoretical networking and server management skills in a real-world, production-like cloud environment.