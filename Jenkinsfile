
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \' python3 site/manage.py ranserver 10.0.3.36:8000 \''
            }
        }
        stage('Тестирование') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \' pwd\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh  ubuntu@10.0.3.36 \' ip -o a\''
            }
        }
    }
}
