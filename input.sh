pipeline {

          agent any
stages {
       stage ('stage 1')
                   {
            steps
             {
                 sh echo "Enter a value: "
          read input
          # Check if the input is an integer
          if [[ "$input" =~ ^-?[0-9]+$ ]]; then
          echo "The input is an integer."
          # Check if the input is a single character
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
