pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'feature/monark-hello-route', url: 'https://github.com/monark04/devops-assignment'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t monark04/devops-assignment:latest .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop old container if running
                    sh 'docker rm -f devops-app || true'
                    // Run new container
                    sh 'docker run -d -p 3000:3000 --name devops-app monark04/devops-assignment:latest'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully! ✅'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
    }
}
