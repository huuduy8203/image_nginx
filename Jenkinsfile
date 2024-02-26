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
                    docker.withRegistry('https://registry.example.com', 'my-registry-credentials') {
                        def nginxImage = docker.image('my-nginx-image')
                        def myContainer = nginxImage.run('-p 8081:80', '--name my-nginx-container')
                        myContainer.stop()
                    }
                }
            }
        }
    }
}
