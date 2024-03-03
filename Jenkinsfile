// Jenkinsfile

pipeline {
    agent any // Используем любой доступный агент
    stages {
        stage('Build') {
            steps {
                script {
                    docker.image('python:latest').inside {
                        sh 'python hello_world.py' // Команда для запуска hello_world.py
                    }
                }
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'hello_world.py', fingerprint: true // Архивация файла hello_world.py
            }
        }
    }
}

