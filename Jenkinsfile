pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                git url: 'https://github.com/akuzniatsou/spring-petclinic.git', branch: 'main'
                sh './mvnw clean package -DskipTests'
                
                echo 'Build docker image'
                script {
                    dockerImage = docker.build("petclinic:$env.BUILD_ID")
                }
            }
        }
		
	stage('Push') {
            steps {
                script {
                    withDockerRegistry([ credentialsId: "dockerCredentials", url: ""]) {
                        dockerImage.push("${env.BUILD_ID}")
                    }
                }
            }

        }
    }
}
