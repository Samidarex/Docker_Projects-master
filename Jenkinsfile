pipeline{
    agent any
    
    options {
        timestamps()
    }
	environment {
	dockerImage = ''  
	registry = 'samidarex/mongo'
	registryCredential = 'dockerhub'
    }
	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/Samidarex/Docker_Projects-master.git'
			}
		}

		stage('Continuous Delivery'){
	    steps {
		script {
		    dockerImage = docker.build registry	 
		}
	    }
	}
	stage('Image Uploading'){
		steps {
			script {
				docker.withRegistry( '', registryCredential){
					dockerImage.push()
				}
			}
		}
	}
	}

	post {
		always {
			bat 'docker logout'
		}
	}

}