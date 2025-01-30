pipeline {
    agent any

    triggers {
        pollSCM('* * * * *') // Fixed syntax
    }

    stages {
        stage('Stage 1') {
            steps {
                sh 'echo "Hi This is from Stage 1"'
            }
        }

        stage('Stage 2') {
            steps {
            sh 'mkdir /root/Second-Revision/Testtrig.log'    
	    sh 'echo "Hi This is from Stage 2 and line 11"'
            }
        }
    }
}
