
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh 'ssh jeka@192.168.88.108 \'cd /home/jeka/docker/django && docker-compose up -d\''
            }
        }
        stage('Тестирование') {
            steps {
                sh 'ssh jeka@192.168.88.108 \'docker ps\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh jeka@192.168.88.108 \' uptime \''
            }
        }
    }
}
