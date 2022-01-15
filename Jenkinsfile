pipeline{

	agent {
        label 'master'
    }
	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
		IMAGE_EXISTS_CHECK = 'true'
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/Samidarex/Docker_Projects-master.git'
			}
		}

		stage('Build') {

			steps {
				bat 'docker-compose up -d api'
                bat 'echo "Docker Build Successfully API Container"'
                bat 'docker-compose up -d client'
                bat 'echo "Docker Build Successfully Client Container"'
                bat 'docker-compose up -d mongo'
                bat 'echo "Docker Build Successfully MongoDB Container"'
			}
		}
		stage('Login') {
            agent {
                docker { 
                    image 'node:16.13.1-alpine'
                    registryUrl 'https://index.docker.io/v1/'
                }
            }
			steps {
				script{
					if(IMAGE_EXISTS_CHECK == 'false')
					{
					catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
						bat 'docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW'
					}
					}
					else{
					echo 'Docker Login Successfully'
					}
				}
			}
		}
		stage('Push') {

			steps {
				script{
				if(IMAGE_EXISTS_CHECK == 'false')
				{
				catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                bat 'docker push -t "samidarex/mongo:latest" .'
				}'
				}
				else
				{
				echo 'Docker Push Successfully'
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