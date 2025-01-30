pipeline ()
agent any
triggers
{
pollSCM'* * * *  *'
}
stages {
       stage (“stage 1”)
                   {
            steps
             {
                 sh ‘echo “this is from stage 1” ’
             }
        stage (“stage 2”)
              {
steps
{
    sh 'echo “This is from Stage2 ” '
}
              }
                   }
}
