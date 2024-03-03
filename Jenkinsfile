pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    docker.image('python:latest').inside {
                        sh 'python hello_world.py'
                    }
                }
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'hello_world.py', fingerprint: true
            }
        }
    }
}

