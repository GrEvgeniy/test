pipeline {
2
    agent any
3
4
    stages {
5
        stage('Сборка') {
6
            steps {
7
                sh 'ssh root@79.141.74.232 \'./helloworld.sh\''
8
            }
9
        }
10
    }
11
}    
