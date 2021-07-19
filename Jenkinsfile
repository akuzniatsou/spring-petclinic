pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            reuseNode true
        }
    }
    
    stages {

        stage('Build') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/akuzniatsou/spring-petclinic.git']]])
                
                echo 'Build docker image'
                script {
                    dockerImage = docker.build("xsasx/test:$env.BUILD_ID")
                }
            }
        }
    }
}
