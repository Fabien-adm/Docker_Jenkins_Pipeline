node {
    def app

    stage('Clone') {

    }
    stage('Build images') {
        app = docker.build("xavki/nginx")

    }
    stage('Test image') {
         docker.image('xavki/nginx').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
	     }

    }
}

