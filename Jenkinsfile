pipeline {
    agent any
    stages {
        stage('Declarative: Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Run scripts') {
            steps {
                sh 'docker build -t my-nginx-image .'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.run("-p 8081:80", "--name my-nginx-container")
                }
            }
        }
    }
}
