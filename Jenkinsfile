node {
    def app

    stage('Clone') {
        echo 'Clonage du dépôt...'
        // Ajoutez ici le code pour cloner votre dépôt (par exemple, git clone)
    }
    
    stage('Build images') {
        dir('/var/lib/jenkins/workspace/') {
            // Construction de l'image Docker
            app = docker.build("elias/nginx", ".")
        }
    }
    
    stage('Test image') {
        docker.image('elias/nginx').withRun('-p 8086:80') { c ->
            echo 'Vérification des conteneurs en cours...'
            sh 'docker ps'
            sh 'curl localhost:8086'
        }
    }
    
    stage('Deploy to MicroK8s with Ansible') {
        dir('/var/lib/jenkins/workspace/') {
            echo 'Déploiement avec Ansible...'
            sh 'ansible-playbook Ansible.yml'
        }
    }
}
