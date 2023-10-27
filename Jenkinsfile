pipeline {
    agent any
    
    stages{
        stage("Pull code from github"){
            steps{
                echo "Code is Pulling.."
                git url:"https://github.com/Utsavch189/django-pipeline-jenkins-CICD.git",branch:"main"
            }
        }
        stage("build docker image"){
            steps{
                echo "Image is building..."
                sh "docker-compose build"
            }
        }
        stage("Deploy"){
            steps{
                echo "Container is creating..."
                sh "docker-compose down && docker-compose up -d"
            }
            
        }
        
    }
}
