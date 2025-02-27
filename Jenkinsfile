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
        docker.image('admfb/nginx').withRun('-p 8085:80') { c ->
            sh 'docker ps'
            sh 'curl localhost:8085'
        }
    }
    
    stage('Deploy to MicroK8s with Ansible') {
        dir('/home/fabien/Bureau/Demo') {
            sh 'ansible-playbook Ansible.yml'
        }
    }
}

