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
				sh 'docker build -t samidarex/docker_projects-master_api:latest .'
                sh 'docker build -t samidarex/mongo:latest .'
                sh 'docker build -t samidarex/docker_projects-master_client:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push -t samidarex/docker_projects-master_api:latest .'
                sh 'docker push -t samidarex/mongo:latest .'
                sh 'docker push -t samidarex/docker_projects-master_client:latest .'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}