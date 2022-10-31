pipeline {
    agent any
    
    stages {
        // Step 1
        stage('SCM') {
                steps {
                    git 'https://github.com/induin4u/Industry-Grade-Java-Project-I.git'
                }        
        }
         // Step 2
        stage('Compile by Maven') {
                steps {
                    sh 'mvn clean compile'
                }
        }
        // Step 3
        stage('Test by Maven') {
                steps {
                    sh 'mvn test'
                }
        }
      
         // Step 4
        stage('Package by Maven') {
                steps {
                    sh 'mvn package'
                }
        }
         
    }
}      
