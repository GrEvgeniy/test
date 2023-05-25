
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \' cd cook_blog && python3 manage.py runserver\''
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
