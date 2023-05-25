
pipeline {
    agent any
    triggers { pollSCM('* * * * *') }
    stages {
        stage('Сборка') {
            steps {
                sh ' ssh ubuntu@10.0.3.36 \'  python3 /home/ubuntu/cook_blog/manage.py runserver\''
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
