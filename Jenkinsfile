node {
    def app

    stage('Clone') {
        // Clone your repository here
    }
    
   stage('Build images') {
        dir('/home/fabien/Bureau/elyse/demo/') {
            app = docker.build("admfb/nginx", ".")
        }
    }
    
     stage('Test image') {
        docker.image('admfb/nginx').withRun('-p 8083:80') { c ->
            sh 'docker ps'
            sh 'curl localhost:8083'
        }
    }
}

