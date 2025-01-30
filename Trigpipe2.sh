pipeline {
    agent any

    stages {
        stage('Stage 1') {
            steps {
	    sh 'echo "Private IP of the server $(hostname -I) "'
            }
        }

        stage('Stage 2') {
            steps {
	    sh 'echo "Public IP of the server $(curl ifconfig.me)"'
            }
        }
    }
}
