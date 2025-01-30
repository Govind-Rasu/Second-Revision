pipeline {
    agent any

    stages {
        stage('Stage 1') {
            steps {
                sh 'echo "Hi This is from Stage 1"'
            }
        }

        stage('Stage 2') {
            steps {
	     sh 'echo "Hi This is from Stage 2"'
            sh 'mkdir /root/Second-Revision/helloman7.log'
	     sh 'echo "The Private IP is $(hostname -I)"'    
            }
        }
    }
}
