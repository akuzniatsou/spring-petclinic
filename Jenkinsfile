pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v $HOME/.m2:/root/.m2:z -u root'
            reuseNode true
        }
    }
    
    stages {

        stage('Build') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/akuzniatsou/spring-petclinic.git']]])
                sh './mvnw clean package -DskipTests'
                
                echo 'Build docker image'
                script {
                    dockerImage = docker.build("xsasx/test:$env.BUILD_ID")
                }
            }
        }
    }
}
