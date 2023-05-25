
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \' cat /etc/nginx/sites-available/default \''
            }
        }
        stage('Тестирование') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \' lsof -i -n -P\''
            }
        }
        stage('Развертывание') {
            steps {
                sh 'ssh  ubuntu@10.0.3.36 \' ip -o a\''
            }
        }
    }
}
