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
                    def nginxImage = docker.image('my-nginx-image')
                    nginxImage.run("-p 8080:80", "--name my-nginx-container")
                }
            }
        }
    }
}
