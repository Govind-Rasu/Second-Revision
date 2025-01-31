pipeline {

          agent any
stages {
       stage ('stage 1')
                   {
            steps
             {
                 sh echo "Enter a value: "
          read input
          if [[ "$input" =~ ^-?[0-9]+$ ]]; then
          echo "The input is an integer."
          elif [[ "$input" =~ ^[a-zA-Z]$ ]]; then
              echo "The input is a character."
               else
                   echo "The input is neither an integer nor a character."
                fi
             }
                   }
                                    }
              fi
      }
