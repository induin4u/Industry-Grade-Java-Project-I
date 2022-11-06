pipeline {
    agent any
    tools {
        maven 'apache-maven-3.6.3' 
    }
    
    environment {
        DOCKERHUB_CRED=credentials('dockerhub-cred')
        BUILD_NUM = "${BUILD_ID}"
    
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
        stage('Docker build and Tagging for Docker Hub') {
                steps {
                    sh 'sudo docker build -t abctechnologies-app:latest .'
                    sh 'sudo docker tag abctechnologies-app 10061982834282/abctechnologies-app:latest'
                }
        }
        // Step 6
        stage('Docker Hub Login and Push the Image') {

			steps {
				sh 'echo $DOCKERHUB_CRED_PSW | sudo docker login -u $DOCKERHUB_CRED_USR --password-stdin'
                		sh 'sudo docker push 10061982834282/abctechnologies-app:latest'
			}
		}
	      
     }
   post {
    always {
      deleteDir() 
    }

    success {
      script {
        sh 'sudo docker rmi -f $(sudo docker images -q)'
	sh 'sudo docker logout'
      }
    }
   }
}      
