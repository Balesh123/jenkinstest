pipeline {
    agent any

    stages {
        stage('Build Docker image') {
            steps {
                script {
                    docker.build('fibonacci')
                }
            }
        }

        stage('Push') {
            steps {
                script {
                    // Push the Docker image to Docker Hub
                    docker.withRegistry('https://hub.docker.com/repository/docker/balesh123/fibo/general', 'Docker_Login') {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Cleanup') {
            steps {
                cleanWs()
            }
        }
    }
}
