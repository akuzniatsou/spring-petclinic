pipeline {
    agent any
    
    stages {

        stage('Build') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/akuzniatsou/spring-petclinic.git']]])
                withMaven {
                    sh "mvnw clean package"
                }
                echo 'Build docker image'
                script {
                    dockerImage = docker.build("xsasx/test:$env.BUILD_ID")
                }
            }
        }
    }
}
