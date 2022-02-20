pipeline {
    agent any 
    environment {
        registry = "sravangcpdocker/ansible-gcp"
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    
    stages {
        stage('Cloning Git') {
            steps {
                sh 'git clone https://github.com/sravan-github/toolkit.git'
                sh 'pwd'
                sh 'cd toolkit'
                sh 'ls -ltr'
            }
        }
    
    // Building Docker images
    stage('Building image') {
      steps{
        script {
            //sh 'cp /var/lib/jenkins/workspace/dockerbulid/Dockerfile /var/lib/jenkins/workspace/dockerbulid/ '
            //dockerImage = docker.build registry + ":$BUILD_NUMBER"
            dockerImage = docker.build registry + ":1"
        }
      }
    }
    
     // Uploading Docker images into Docker Hub
    stage('Upload Image') {
     steps{    
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            }
        }
      }
    }
 }

 post {
        always {
            cleanWs deleteDirs: true
        }
     }
}
