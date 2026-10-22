
pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/wissalelmania/my-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('wissalelmania78/my-app')
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-creds') {
                        docker.image('wissalelmania78/my-app').push('latest')
                    }
                }
            }
        }
    }
}
