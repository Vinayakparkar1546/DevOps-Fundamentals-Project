# DevOps Fundamentals Project

## Project Overview

This project demonstrates the fundamentals of DevOps using AWS and Linux. The project includes creating AWS infrastructure, configuring an Ubuntu server, deploying a website using Apache, managing source code with Git and GitHub, automating tasks using Bash scripts, and monitoring Linux system logs.

---

## AWS Architecture

The infrastructure created for this project includes:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- Ubuntu EC2 Instance
- Apache Web Server

Architecture Flow:

Internet
    │
    ▼
Internet Gateway
    │
    ▼
Public Route Table
    │
    ▼
Public Subnet
    │
    ▼
Ubuntu EC2 Instance
    │
    ▼
Apache Web Server
    │
    ▼
Hosted Website

---

## Installation Steps

1. Created a Custom VPC.
2. Created a Public Subnet.
3. Attached an Internet Gateway.
4. Configured Route Table.
5. Created Security Group.
6. Launched Ubuntu EC2 Instance.
7. Connected using SSH.
8. Updated Ubuntu packages.
9. Installed Git, Apache, Curl, and Vim.
10. Created and deployed the website.
11. Configured GitHub repository.
12. Created Bash automation scripts.
13. Generated Linux log report.

---

## Commands Used

### Update Ubuntu

```bash
sudo apt update
sudo apt upgrade -y
```

### Install Packages

```bash
sudo apt install git apache2 curl vim -y
```

### Apache

```bash
sudo systemctl status apache2
sudo systemctl restart apache2
```

### Git

```bash
git init
git add .
git commit -m "Initial Commit"
git branch development
git checkout development
git checkout main
git merge development
git push origin main
```

---

## Folder Structure

```
DevOps-Fundamentals-Project/
│── README.md
│── index.html
│── health-check.sh
│── apache-monitor.sh
│── backup.sh
│── log-report.txt
│
├── screenshots/
│   ├── aws-setup.png
│   ├── website.png
│   ├── github.png
│
├── documentation/
│   └── Project_Report.pdf
```

---

## Challenges Faced

- Configuring VPC networking correctly.
- Understanding Route Tables and Internet Gateway.
- Setting Security Group rules.
- Git authentication using Personal Access Token / SSH.
- Deploying the website successfully on Apache.
- Creating Bash scripts for automation.
- Understanding Linux log files.

---

## Learning Outcomes

After completing this project, I learned:

- AWS VPC networking
- EC2 instance management
- Ubuntu server administration
- Apache Web Server deployment
- Git and GitHub workflow
- Bash scripting
- Linux log monitoring
- Basic DevOps practices

---

## Author

**Student Name:** Vinayak Parkar

**Batch Code:** A592

**Date:27 July 2026
