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

        stage('Install Dependency') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build for Production') {
            steps {
                sh 'npm run build'
            }
        }
    }
}