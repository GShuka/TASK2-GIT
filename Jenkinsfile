// Jenkinsfile

pipeline {
    agent {
        dockerContainer {
            image 'ubuntu:latest'
            args '-u root' // Выполнение команд с правами суперпользователя
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'g++ -o main main.cpp' // Команда сборки проекта (пример для C++)
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'main', fingerprint: true // Архивация бинарного файла
            }
        }
    }
}

