node {
    def app

    stage('Clone') {
        echo 'Clonage du dépôt...'
        // Ajoutez ici le code pour cloner votre dépôt (par exemple, git clone)
    }
    
    stage('Build images') {
        dir('/home/elka/Bureau/Demo/') {
            // Construction de l'image Docker
            app = docker.build("admfb/nginx", ".")
        }
    }
    
    stage('Test image') {
        docker.image('admfb/nginx').withRun('-p 8085:80') { c ->
            echo 'Vérification des conteneurs en cours...'
            sh 'docker ps'
            sh 'curl localhost:8085'
        }
    }
    
    stage('Deploy to MicroK8s with Ansible') {
        dir('/home/elka/Bureau/Demo') {
            echo 'Déploiement avec Ansible...'
            sh 'ansible-playbook Ansible.yml'
        }
    }
}
