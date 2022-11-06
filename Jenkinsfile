pipeline {
    agent any
    tools {
        maven 'apache-maven-3.6.3' 
    }    
    stages {
        // Step 1
        stage('Checkout Code from SCM-GIT') {
                steps {
                    git 'https://github.com/induin4u/Industry-Grade-Java-Project-I.git'
                }        
        }
        // Step 2
        stage('Compile the GIT code by Maven') {
                steps {
                    sh 'mvn clean compile'
                }
        }
        // Step 3
        stage('Test Code by Maven') {
                steps {
                    sh 'mvn test'
                }
        }
      
         // Step 4
        stage('Code Package by Maven') {
                steps {
                    sh 'mvn package'
                }
        }
        
         // Step 5
        stage('Docker build') {
                steps {
                    sh 'sudo docker build -t abctechnologies:latest .'
                }
        }
        
         // Step 
        stage('Run Docker Container') {
                steps {
                    sh 'sudo docker run --name abctechnologies -d -p 9099:8080 abctechnologies:latest'
                }
        }
         
    }
}      
