pipeline {
    agent any
    stages {
        stage('building Docker Image') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('creating and starting Docker Container') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}