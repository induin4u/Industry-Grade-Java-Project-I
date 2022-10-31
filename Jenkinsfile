pipeline {
    agent any
    
    stages {
        // Step 1
        stage('SCM') {
                steps {
                    git 'https://github.com/induin4u/Industry-Grade-Java-Project-I.git'
                }        
        }
       stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "MAVEN_HOME = ${MAVEN_HOME}"
                    echo "$JAVA_HOME = ${JAVA_HOME}"
                '''
            }
        }
         // Step 2
        stage('Compile by Maven') {
                steps {
                    sh '/opt/apache-maven-3.6.3/bin/mvn clean compile'
                }
        }
        // Step 3
        stage('Test by Maven') {
                steps {
                    sh '/opt/apache-maven-3.6.3/bin/mvn test'
                }
        }
      
         // Step 4
        stage('Package by Maven') {
                steps {
                    sh '/opt/apache-maven-3.6.3/bin/mvn package'
                }
        }
         
    }
}      
