// Jenkinsfile

pipeline {
    agent {
        dockerContainer {
            image 'ubuntu:latest'
            environment {
                USER = 'root' // Установка пользователя root
            }
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'python hello_world.py' // Команда для запуска hello_world.py
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'hello_world.py', fingerprint: true // Архивация файла hello_world.py
            }
        }
    }
}
