// def getJSFilePath(){
//     return "hf_jenkins_pipeline/jenkinsSteps"
// }

pipeline {
    agent any

    // tools {nodejs "nuxt_node"}
    // environment {
    //     SYSTEM = "${params.System}"
    //     CLIENT = "${params.Client}"
    //     ABAPUSER = "${params.User}"
    //     ABAPPASSWORD = "${params.Password}"
    // }

    stages {
        stage('Set npm registry') {
          steps{
            nodejs(nodeJSInstallationName: 'nuxt_node') {
                    sh "npm config set registry 'https://registry.npm.taobao.org'"
            }
          }
        }


        stage('Build for Production') {
            steps {
              nodejs(nodeJSInstallationName: 'nuxt_node') {
                sh 'npm run build'
              }
            }
        }
    }
}