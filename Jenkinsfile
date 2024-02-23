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
                script {
                    docker.withServer('tcp://docker-host:2376', 'docker-credentials-id') {
                        docker.build('my-nginx-image:latest', '.')
                    }
                }
            }
        }
    }

    post {
        success {
            // Push the Docker image to a registry (optional)
            script {
                docker.withRegistry('https://https://adf6-14-162-161-39.ngrok-free.app/', 'docker-registry-credentials') {
                    docker.image('my-nginx-image:latest').push()
                }
            }
        }
    }
}