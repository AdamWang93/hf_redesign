// def getJSFilePath(){
//     return "hf_jenkins_pipeline/jenkinsSteps"
// }

pipeline {
    agent any

    node {
      env.NODEJS_HOME = "${tool 'nuxt_node'}"
      // on linux / mac
      env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"
      // on windows
      // env.PATH="${env.NODEJS_HOME};${env.PATH}"
      sh 'npm --version'
    }

    // tools {nodejs "node"}
    // environment {
    //     SYSTEM = "${params.System}"
    //     CLIENT = "${params.Client}"
    //     ABAPUSER = "${params.User}"
    //     ABAPPASSWORD = "${params.Password}"
    // }

    stages {
        stage('Check Node Version') {
            steps {
                sh 'node -v'
            }
        }

        stage('Check NPM Version') {
            steps {
                sh 'npm -v'
            }
        }

        stage('Set npm registry') {
          steps{
            sh "npm config set registry 'https://registry.npm.taobao.org'"
          }
        }

        // stage('Install Latest npm') {
        //     steps {
        //         sh 'npm install npm@latest -g'
        //     }
        // }

        // stage('Install Dependency') {
        //     steps {
        //         sh 'npm i nuxt cross-env'
        //     }
        // }


        stage('Build for Production') {
            steps {
                sh 'npm run build'
            }
        }
    }
}