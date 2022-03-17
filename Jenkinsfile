pipeline {
    agent any 
    environment {
        registry = "sravangcpdocker/gcpcli"
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    
    stages {
        stage('Cloning Git') {
            steps {
                sh 'git clone https://github.com/sravan-github/toolkit.git'
            }
        }
    
    // Building Docker images
    stage('Building image') {
      steps{
        script {
            //sh 'cp /var/lib/jenkins/workspace/dockerbulid/Dockerfile /var/lib/jenkins/workspace/dockerbulid/ '
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
            //dockerImage = docker.build registry + ":new"
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
