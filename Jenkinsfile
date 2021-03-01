pipeline {
    agent any
    tools {
        maven 'Maven3.6.3'
    }
    stages {
    stage ('Checkout')  {
      steps {
          checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/prasath1412/DevOps-Demo-WebApp.git']]])
      }  
    }
    stage ('Build')  {
        steps {
            sh 'mvn clean install -f pom.xml'
    }
        post {
       always {
           jiraSendBuildInfo site: 'prasath-learning.atlassian.net', branch: 'CHECK-1'
       }
    }
}
}
}
