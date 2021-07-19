pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/akuzniatsou/spring-petclinic.git']]])
                sh './gradlew clean build'
            }
        }
    }
}
