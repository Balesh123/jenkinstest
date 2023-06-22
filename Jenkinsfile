pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Clone the repository
                git 'https://github.com/Balesh123/Fibonacci.git'

                // Build the Docker image
                script {
                    docker.build('fibonacci-image')
                }
            }
        }

        stage('Push') {
            steps {
                // Push the Docker image to Docker Hub
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'Balesh123', passwordVariable: 'Balesh_2017')]) {
                        sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
                        sh 'docker push balesh123/fibo'
                    }
                }
            }
        }
    }
}
