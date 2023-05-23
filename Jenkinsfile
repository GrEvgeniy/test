
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh 'ssh jeka@192.168.88.108 \'cd /home/jeka/test && \'for ((i = 1; i <= 5; i++)); do echo "number: $i"; done\''
            }
        }
        stage('Тестирование') {
            steps {
                sh 'ssh jeka@192.168.88.108 \'docker ps\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh jeka@192.168.88.108 \' pwd\''
            }
        }
    }
}
