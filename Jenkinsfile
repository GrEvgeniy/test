
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh 'ssh root@172.27.0.2 \'pwd\''
            }
        }
        stage('Тестирование') {
            steps {
                sh 'ssh jeka@192.168.88.108 \' sshpass -p "1" ssh root@172.27.0.2 -p22222 && ps axjf\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh jeka@192.168.88.108 \' ps axjf\''
            }
        }
    }
}
