#!groovy
//Check ub1 properties
properties([disableConcurrentBuilds()])

pipeline {
    agent {
        label 'main'
        }
    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }         
    stages {
        stage("Preparations") {
            steps {
                sh 'ssh root@94.26.236.8 \'hostname\''
            }
        }        
    }        
} 
