pipeline {
    agent {
        docker {
            image 'ubuntu:latest'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'apt-get update && apt-get install -y build-essential'
                sh 'make'
            }
        }
        stage('Publish') {
            steps {
                archiveArtifacts artifacts: '**/*', fingerprint: true
            }
        }
    }
}
