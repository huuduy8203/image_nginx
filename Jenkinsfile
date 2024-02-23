pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build('my-nginx-image')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.run('-p 8080:80 --name my-nginx-container my-nginx-image')
                }
            }
        }
    }
}