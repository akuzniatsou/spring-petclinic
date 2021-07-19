pipeline {
    agent any
    
    stages {
        stage('Init') {
            steps {
                script {
                    env.PATH = "${env.PATH}:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
                    echo env.PATH
                }
            }
        }
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
