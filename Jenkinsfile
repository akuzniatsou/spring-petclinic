pipeline {
    agent any
    stages {

        stage('Build') {
            steps {
                git url: 'https://github.com/akuzniatsou/spring-petclinic.git', branch: 'main'
                
                echo 'Build docker image'
                sh 'docker build . -tag docker-jenkins'
            }
        }
    }
}
