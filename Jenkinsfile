// def getJSFilePath(){
//     return "hf_jenkins_pipeline/jenkinsSteps"
// }

pipeline {
    agent any

    tools {nodejs "node"}
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
            sh 'npm config set registry https://registry.npm.taobao.org'
          }
        }

        stage('Check Config') {
          steps{
            sh 'npm config list'
          }
        }

        // stage('Install Dependency') {
        //     steps {
        //         sh 'npm i nuxt'
        //     }
        // }

        // stage('Build for Production') {
        //     steps {
        //         sh 'npm run build'
        //     }
        // }
    }
}