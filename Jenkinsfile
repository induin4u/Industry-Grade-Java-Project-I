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
        stage('Deploy War file into Tomcat') {
                steps {
                    sh 'sudo cp target/*.war /opt/apache-tomcat-8.5.83/webapps/'
                }
        }
         
    }
}      
