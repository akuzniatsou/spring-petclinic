pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                git url: 'https://github.com/akuzniatsou/spring-petclinic.git', branch: 'main'
                sh './mvnw clean package -DskipTests'
                
                echo 'Build docker image'
                script {
                    dockerImage = docker.build("xsasx/petclinic:$env.BUILD_ID")
                }
            }
        }

	
        stage('Publish') {
	    steps {
                script {
                    env.PRODUCT_SERVICE_TAG = "${env.BUILD_ID}"
		    kubernetesDeploy(configs: 'petclinic-manifest.yaml', kubeconfigId: 'kubeConfig')
                }
            }
        }
    }
}
