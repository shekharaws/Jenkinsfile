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
                
                script {
				dir("dir1") {checkout_git.checkout_git("java-hello-world-with-maven")}
                dir("dir2") {checkout_git.checkout_git("tomcat")}
				       }
                
                
            }
        }

                stage('Maven Build') {
            steps {
                script 
                {
                    maven_build.maven_build()
                }
            }
        
        
    }                
        
    }
}
