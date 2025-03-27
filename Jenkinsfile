node {
    def app

    stage('Clone') {
        echo 'Clonage du dépôt...'
        // 
    }
    
    stage('Build images') {
        dir('/var/lib/jenkins/workspace/') {
            // Construction de l'image Docker
            app = docker.build("eli/nginx", ".")
        }
    }
    
    stage('Test image') {
        docker.image('eli/nginx').withRun('-p 8085:80') { c ->
            echo 'Vérification des conteneurs en cours...'
            sh 'docker ps'
            sh 'curl localhost:8085'
        }
    }
    
    stage('Deploy to MicroK8s with Ansible') {
        dir('/var/lib/jenkins/workspace/') {
            echo 'Déploiement avec Ansible...'
            sh 'ansible-playbook Ansible.yml'
        }
    }
}
