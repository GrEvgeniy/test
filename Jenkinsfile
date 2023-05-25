
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \' pwd\''ssh ubuntu@10.0.3.36
            }
        }
        stage('Тестирование') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \' ps axjf\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh  \ssh ubuntu@10.0.3.36 \' ip -o a\''
            }
        }
    }
}
