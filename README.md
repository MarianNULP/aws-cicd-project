# Automated AWS Web Server Deployment (CI/CD Pipeline)

## 📌 Project Overview
This repository contains the source code and CI/CD configuration for my personal resume website. The project demonstrates practical skills in cloud infrastructure provisioning, Linux system administration, and automated deployment processes.

## 🛠️ Technology Stack
* **Cloud Provider:** AWS (Amazon Web Services)
* **Compute:** EC2 Instance (Ubuntu Linux)
* **Web Server:** Apache2
* **CI/CD:** GitHub Actions
* **Version Control:** Git & GitHub
* **Security:** SSH Key Authentication, AWS Security Groups (Firewall)

## ⚙️ Architecture & Workflow
1. **Local Development:** Code updates (HTML/CSS) are made locally and pushed to the `main` branch on GitHub.
2. **Continuous Integration:** GitHub Actions detects the `push` event and triggers the automated deployment workflow.
3. **Continuous Deployment:** The pipeline securely connects to the AWS EC2 instance via SSH using encrypted GitHub Secrets (`appleboy/scp-action`).
4. **Hosting:** The updated files are deployed directly to the `/var/www/html` directory on the Apache web server, making the changes instantly live on the public IP.

## 🔒 Security Measures Implemented
* Configured strict AWS Security Group rules (allowing inbound traffic only on ports 22 for SSH and 80 for HTTP).
* Sensitive credentials (Server IP, Username, SSH Private Key) are securely stored in GitHub Secrets, preventing exposure in the public repository.
* Set up appropriate directory ownership and permissions (`chown`) on the Linux server for secure automated access.

## 👨‍💻 About the Author
Targeting roles as a **Junior System Administrator / Network Engineer**. 
This project was built to apply hands-on networking and server management skills in a real-world cloud environment.
