
// pipeline {
//     agent any
//     tools {
//         go 'go1.15'
//     }
//     environment {
//         GO114MODULE = 'on'
//         CGO_ENABLED = 0 
//         GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
//     }
//     stages {        
//         stage('Pre Test') {
//             steps {
//                 echo 'Installing dependencies'
//                 sh 'go version'
//                 sh 'go get -u golang.org/x/lint/golint'
//             }
//         }
        
//         stage('Build') {
//             steps {
//                 echo 'Compiling and building'
//                 sh 'go build'
//             }
//         }

//         stage('Test') {
//             steps {
//                 withEnv(["PATH+GO=${GOPATH}/bin"]){
//                     echo 'Running vetting'
//                     sh 'go vet .'
//                     echo 'Running linting'
//                     sh 'golint .'
//                     echo 'Running test'
// //                     sh 'cd test && go test -v'
//                 }
//             }
//         }
        
//         stage('Deploy') {
//             steps {
//                 echo 'Deploy the app'
//             }
//         }
        
//     }
//     post {
//         always {
//             emailext body: "${currentBuild.currentResult}: Job ${env.JOB_NAME} build ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}",
//                 recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']],
//                 to: "${params.RECIPIENTS}",
//                 subject: "Jenkins Build ${currentBuild.currentResult}: Job ${env.JOB_NAME}"
            
//         }
//     }  
}



// pipeline {
//     // install golang 1.15 on Jenkins node
//     agent any
//     tools {
//         go 'go1.15'
//     }
//     environment {
//         GO114MODULE = 'on'
//         CGO_ENABLED = 0 
//         GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
//     }
//     stages {
//         stage("unit-test") {
//             steps {
//                 echo 'UNIT TEST EXECUTION STARTED'
//                 sh 'make unit-tests'
//             }
//         }
//         stage("functional-test") {
//             steps {
//                 echo 'FUNCTIONAL TEST EXECUTION STARTED'
//                 sh 'make functional-tests'
//             }
//         }
//         stage("build") {
//             steps {
//                 echo 'BUILD EXECUTION STARTED'
//                 sh 'go version'
//                 sh 'go get ./...'
//                 sh 'docker build . -t shadowshotx/product-go-micro'
//             }
//         }
//         stage('deliver') {
//             agent any
//             steps {
//                 withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerhubPassword', usernameVariable: 'dockerhubUser')]) {
//                 sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPassword}"
//                 sh 'docker push shadowshotx/product-go-micro'
//                 }
//             }
//         }
//     }
// }
