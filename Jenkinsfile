@Library('MyLibrary') _
pipeline {
    agent any
    tools {
        maven "Maven"
    }
    stages {
        
        stage('Hello World') {
            steps {
                script 
                {
                    helloworld.hello()
                }
            }
        }

        stage('Checkout code from Git') {
            steps {
                parallel (
                "1": {dir("java-hello-world-with-maven"){script {checkout_git.checkout_git("java-hello-world-with-maven","master")}}},
                "2": {dir("boxfuse-sample-java-war-hello"){script {checkout_git.checkout_git("boxfuse-sample-java-war-hello","master")}}}
                )
            }
        }
        
        
    }                
        
    }