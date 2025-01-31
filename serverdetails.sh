pipeline {

          agent any
stages {
       stage ('stage 1')
                   {
            steps
             {
                 sh 'echo “The name of the server is follows”'
                 sh 'echo "$(hostname)"'
             }
             }
        stage ('stage 2')
              {
              steps
                    {
                sh 'echo “The IP address of the server is”'
                 sh 'echo "$(hostname -I)"'
              }
              }
                   }
}

