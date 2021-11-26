pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub-1')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t dykoffi/nodeapp:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push dykoffi/nodeapp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}
}