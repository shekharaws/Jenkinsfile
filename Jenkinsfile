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

                dir("tag_code") {
                    script {checkout_git.checkout_git("sparkjava-war-example", "master")}
                }
            }
        }

        //stage('create tag on git repo') {
            //steps {
                //dir("tag_code") {
                    // { create_tag.create_tag("${tag}")}}
            //}
        //}

        stage('Trigger AWS Code Build') {
            steps {
                dir("tag_code")
                {

                    script {aws_codebuild.aws_codebuild("project-2")}
                }
            }
        }       
        
    }                
        
    }