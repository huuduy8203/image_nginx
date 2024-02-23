pipeline {
    agent {
        docker {
            image 'docker:20.10.7'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

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