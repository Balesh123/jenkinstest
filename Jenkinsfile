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
                    docker.withRegistry('https://registry.hub.docker.com', 'Docker_Login') {
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
