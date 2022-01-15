pipeline{

	agent {label 'master'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/Samidarex/Docker_Projects-master.git'
			}
		}

		stage('Build') {

			steps {
				bat 'docker-compose up -d api-container'
                bat 'echo "Docker Build Successfully API Container"'
                bat 'docker-compose up -d client-container'
                bat 'echo "Docker Build Successfully Client Container"'
                bat 'docker-compose up -d mongo-backend'
                bat 'echo "Docker Build Successfully MongoDB Container"'
			}
		}

		stage('Login') {

			steps {
				bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				bat 'docker push -t samidarex/docker_projects-master_api:latest .'
                bat 'docker push -t samidarex/mongo:latest .'
                bat 'docker push -t samidarex/docker_projects-master_client:latest .'
			}
		}
	}

	post {
		always {
			bat 'docker logout'
		}
	}

}