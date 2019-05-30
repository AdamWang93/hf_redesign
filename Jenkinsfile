// def getJSFilePath(){
//     return "hf_jenkins_pipeline/jenkinsSteps"
// }

pipeline {
    agent any

    tools {nodejs "nuxt_node"}
    // environment {
    //     SYSTEM = "${params.System}"
    //     CLIENT = "${params.Client}"
    //     ABAPUSER = "${params.User}"
    //     ABAPPASSWORD = "${params.Password}"
    // }

    stages {
        // stage('Set npm registry') {
        //   steps{
        //     sh "npm config set registry 'https://registry.npm.taobao.org'"
        //   }
        // }

        stage('Check NPM Config') {
          steps {
            sh 'npm config list'
          }
        }

        stage('Check Path'){
          steps{
            sh 'echo $PATH'
          }
        }

        stage('Build for Production') {
          steps {
            sh 'npm run build'
          }
        }
    }
}