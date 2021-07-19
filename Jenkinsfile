pipeline {
    agent any
    stages {

        stage('Build') {
            steps {
                git url: 'https://github.com/akuzniatsou/spring-petclinic.git', branch: 'main'
                
                echo 'Build docker image'
                script {
                    dockerImage = docker.build("xsasx/test:$env.BUILD_ID")
                }
            }
        }
    }
}
