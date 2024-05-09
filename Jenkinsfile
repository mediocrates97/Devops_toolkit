// pipeline {
//     agent any
    
//     stages {
//         stage('SCM') {
//             steps {
                
//                 checkout scm
//             }
//         }
        
//         stage('SonarQube Analysis') {
//             environment {
//                 DOCKER_IMAGE = 'sonarsource/sonar-scanner-cli:latest'
//             }
//             steps {
//                 script {
                    
//                     sh """
//                     docker run \
//                         -v /var/run/docker.sock:/var/run/docker.sock \
//                         -v /var/jenkins_home/workspace/DevOps_toolkit:/project \
//                         ${DOCKER_IMAGE} \
//                         sonar-scanner \
//                         -Dsonar.projectKey=test123 \
//                         -Dsonar.sources=/project \
//                         -Dsonar.host.url=http://127.0.0.1:9000 \
//                         -Dsonar.login=squ_5d8636abd5a085e02017229cb9dcd6c80f56606c
//                     """
//                 }
//             }
//         }
//     }
// }

#####################

// pipeline {
//     agent any

//     stages {
//         stage('SonarQube Analysis') {
//             steps {
//                 script {
//                     def scannerHome = tool 'SonarScanner';
//                     withSonarQubeEnv() {
//                         sh "${scannerHome}/bin/sonar-scanner \
//                             -Dsonar.projectKey=test123 \
//                             -Dsonar.sources=. \
//                             -Dsonar.host.url=http://127.0.0.1:9000 \
//                             -Dsonar.login=squ_5d8636abd5a085e02017229cb9dcd6c80f56606c"
//                     }
//                 }
//             }
//         }
//     }
// }

######################
pipeline {
    agent any
node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScanner';
    withSonarQubeEnv() {
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}
}
######################
// pipeline {
//     agent any

//     tools {
//         maven 'Maven'
//     }

//     stages {
//         stage('Git Checkout') {
//             steps {
//                 git branch: 'main', url: 'https://github.com/mediocrates97/devops_toolkit'
//                 echo 'Git Checkout Completed'
//             }
//         }

//         stage('Build') {
//             steps {
//                 sh 'mvn clean package'
//             }
//         }

//         stage('SonarQube Analysis') {
//             steps {
//                 withSonarQubeEnv('Local SonarQube') {
//                     sh 'mvn sonar:sonar -Dsonar.projectKey=test1'
//                 }
//                 echo 'SonarQube Analysis Completed'
//             }
//         }
//     }
// }
////////////////////test////////////
// pipeline {
//     agent any
//     // tools {
//     //     maven 'Maven'
//     // }

//     stages {
//         stage('Git Checkout') {
//             steps {
//                 checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mediocrates97/devops_toolkit']])
//                 echo 'Git Checkout Completed'
//             }
//         }

//         // stage('SonarQube Analysis') {
//         //     steps {
//         //         withSonarQubeEnv('Local SonarQube') {
//         //             bat '''mvn clean verify sonar:sonar -Dsonar.projectKey=ProjectNameSonar -Dsonar.projectName='ProjectNameSonar' -Dsonar.host.url=http://localhost:9000''' //port 9000 is default for sonar
//         //             echo 'SonarQube Analysis Completed'
//         //         }
//         //     }
//         // }
// node {
//   stage('SCM') {
//     checkout scm
//   }
//   stage('SonarQube Analysis') {
//     def scannerHome = tool 'SonarScanner';
//     withSonarQubeEnv() {
//       sh "${scannerHome}/bin/sonar-scanner"
//     }
//   }
// }
//     }
// }
