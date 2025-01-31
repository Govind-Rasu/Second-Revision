pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                script {
                    def input = input(message: 'Enter a value:', parameters: [string(defaultValue: '', description: 'Value to check', name: 'UserInput')])
                    if (input ==~ /^-?[0-9]+$/) {
                        echo "The input is an integer."
                    // Check if the input is a character
                    } else if (input ==~ /^[a-zA-Z]$/) {
                        echo "The input is a character."
                    } else {
                        echo "The input is neither an integer nor a character."
                    }
                }
            }
        }
    }
}
