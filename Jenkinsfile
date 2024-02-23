pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone your Git repository
                git 'https://github.com/huuduy8203/image_nginx.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image for Nginx
                script {
                    docker.build('my-nginx-image:latest', '.')
                }
            }
        }
    }
}