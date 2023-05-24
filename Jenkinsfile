
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh 'ssh jeka@192.168.88.108 \'docker ps\''
            }
        }
        stage('Тестирование') {
            steps {
                sh 'ssh jeka@192.168.88.108 \'ssh root@172.27.02 -p22222 && pwd\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh jeka@192.168.88.108 \' ps axjf\''
            }
        }
    }
}
