node {
    def app

    stage('Clone') {
        // Clone your repository here
    }
    
    stage('Build images') {
        app = docker.build("nginx")
    }
    
    stage('Test image') {
        docker.image('nginx').withRun('-p 80:80') { c ->
            sh 'docker ps'
            sh 'curl localhost'
        }
    }
}

