
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh 'ssh jeka@192.168.88.108 \'pwd\''
            }
        }
        stage('Тестирование') {
            steps {
                sh 'ssh jeka@192.168.88.108 \' ps axjf\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh jeka@192.168.88.108 \' ip -o a\''
            }
        }
    }
}
