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
                sh 'echo "Hi This is from Stage 2"'
            }
        }
    }
}
