# Automated Cloud Resume Deployment (AWS + CI/CD + Zabbix Monitoring)

🚀 **Live Demo:** [https://marianpavlos.me](https://marianpavlos.me)

## 📌 Project Overview
This repository contains the source code and CI/CD configuration for my personal resume website. The project demonstrates practical, hands-on skills in cloud infrastructure provisioning, Linux system administration, database setup, automated deployment, and enterprise-level monitoring.

## 🛠️ Technology Stack
* **Cloud Provider:** AWS (Amazon Web Services)
* **Compute & OS:** EC2 Instance (Ubuntu Linux) with Swap memory optimization
* **Web Server:** Apache2
* **Monitoring & DB:** Zabbix 7.0 (Server, Frontend, Agent), MySQL
* **Domain & DNS:** Namecheap (Custom Domain Routing)
* **Security (SSL/TLS):** Let's Encrypt & Certbot (HTTPS)
* **CI/CD:** GitHub Actions
* **Version Control:** Git & GitHub

## ⚙️ Architecture & Workflow
1. **Local Development:** Code updates (HTML/CSS) are made locally and pushed to the `main` branch on GitHub.
2. **Continuous Integration/Deployment:** GitHub Actions detects the push event and securely connects to the AWS EC2 instance via SSH to update the web root directory `/var/www/html`.
3. **Hosting & Routing:** Traffic is routed via custom DNS A-records, and the Apache web server serves the content globally over enforced HTTPS.
4. **Infrastructure Monitoring (Zabbix):** - A fully functional Zabbix 7.0 instance runs on the server, backed by a MySQL database. 
   - Zabbix Agent collects internal server metrics (CPU, RAM, Network).
   - Zabbix Web Scenarios are configured to ping the website every minute to ensure 200 OK HTTP responses, simulating real-world uptime monitoring.

## 🔒 Security Measures Implemented
* **SSL/TLS Encryption:** Automated certificate issuance and renewal via Let's Encrypt (Certbot).
* **Firewall Rules:** Configured strict AWS Security Group rules (SSH, HTTP, HTTPS).
* **Credential Management:** Sensitive credentials (Server IP, SSH Keys, DB Passwords) are securely stored in GitHub Secrets or secure Linux directories.
* **Access Control:** Proper Linux directory ownership and permission management (`chmod`/`chown`).

## 👨‍💻 About the Author
Targeting roles as a **Junior System Administrator / Network Engineer**. 
This project was built to apply theoretical networking and server management skills in a real-world, production-like cloud environment.