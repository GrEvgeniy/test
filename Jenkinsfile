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
                sh 'ssh jeka@192.168.88.108 \'hostname\''
            }
        }        
}            
