pipeline {
    agent any
    environment {
    DOCKER_REGISTRY_CREDENTIALS = credentials('my-registry-credentials')
    }
    stages {
        stage('Declarative: Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Run scripts') {
            steps {
                script {
                    docker.build("my-nginx-image")
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.withRegistry('my-registry-credentials') {
                        docker.build('my-nginx-image')
                    }
                }
            }
        }
    }
}
