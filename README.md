# DevOps Practical Assignment

## 📌 Objective
This assignment will give you **hands-on experience with real-world DevOps tools** — Git, GitHub, Docker, and Jenkins — by creating a complete CI/CD pipeline for a simple Node.js application.

By the end of this assignment, you will:
- Work with Git branching, commits, and pull requests.
- Containerize a Node.js app using Docker.
- Automate the build and deployment using Jenkins.
- Deploy the app on a server and verify it runs.

---

## 🛠 Prerequisites
- Installed: **Git, Docker, Jenkins** (or access to Jenkins server)
- A GitHub account
- A running server/VM (local or AWS EC2) to deploy the app

---

## 📂 Repository Structure

```bash
.
├── Dockerfile
├── Jenkinsfile
├── index.js
├── package.json
└── README.md  # (This file)
```

## 🚀 Assignment Steps
1. Fork & Clone
  - Fork this repository to your own GitHub account.
  - Clone it locally:
    ```
    git clone https://github.com/veershah-sh/devops-assignment
    cd devops-assignment
    ```
2. Create a Feature Branch
  ```git checkout -b feature/<name>-hello-route```

3. Modify the App
Edit index.js and add a new route:
```javascript
app.get('/hello', (req, res) => {
  res.send('Hello from <Your Name>!');
});
```

4. Commit & Push
```
git add .
git commit -m "Added /<name> hello route"
git push origin feature/<name>-hello-route
```

5. Create a Pull Request
  - Go to your forked repository on GitHub.
  - Open a Pull Request from feature/<name>-hello-route → main.
  - Merge the Pull Request once approved.

6. Write a Dockerfile
  - Sample Dockerfile
  - Build and run locally

7. Configure Jenkins Pipeline
  1. Open Jenkins UI → Create a new Pipeline job.
  2. Configure Pipeline Script from SCM:
      - SCM: Git
      - Repository URL: https://github.com/<your-username>/<repo-name>.git
      - Branch: main
      - Script Path: Jenkinsfile
      - Sample Jenkinsfile:
    
8. Verify Deployment
  - Access the deployed app

## ✅ Deliverables (Submission Format)

| **Deliverable**        | **Format** |
|------------------------|-----------|
| **GitHub Repository URL** | Paste link to your forked repo |
| **Pull Request Link**      | Paste PR link + attach screenshot of merged PR |
| **Docker Build Proof**     | Screenshot of successful `docker build` output |
| **Jenkins Pipeline Proof** | Screenshot of successful Jenkins job execution |
| **Deployment Proof**       | Screenshot of browser showing `/hello` response |
