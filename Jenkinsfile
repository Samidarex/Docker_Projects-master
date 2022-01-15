pipeline{

	agent {
        label 'master'
    }
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
				bat 'docker-compose up -d api'
                bat 'echo "Docker Build Successfully API Container"'
                bat 'docker-compose up -d client'
                bat 'echo "Docker Build Successfully Client Container"'
                bat 'docker-compose up -d mongo'
                bat 'echo "Docker Build Successfully MongoDB Container"'
			}
		}
		stage('Login') {
			steps {
				bat './publish.bat'
			}
		}
		stage('Push') {
			steps {
				bat './publish.bat'
			}
		}
	}

	post {
		always {
			bat 'docker logout'
		}
	}

}