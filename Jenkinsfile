node {
    def app

    stage('Clone') {
        echo 'Clonage du dépôt...'
        //sh 'git clone https://github.com/Fabien-adm/Docker_Jenkins_Pipeline.git'
        //dir('Docker_Jenkins_Pipeline') {
           // echo 'Dépôt cloné avec succès.'
        }
    }
    
    stage('Build images') {
        // Correction : Utilisation du répertoire cloné pour le Dockerfile
        dir('Docker_Jenkins_Pipeline') {
            echo 'Construction de l\'image Docker...'
            app = docker.build("elyse/nginx", ".")
        }
    }
    
    stage('Test image') {
        echo 'Test de l\'image Docker...'
        docker.image('elyse/nginx').withRun('-p 8084:80') { c ->
            echo 'Vérification des conteneurs en cours...'
            sh 'docker ps'
            sh 'curl localhost:8084'
        }
    }
    
    stage('Deploy to MicroK8s with Ansible') {
        // Correction : Utilisation du répertoire cloné pour les fichiers Ansible
        dir('Docker_Jenkins_Pipeline') {
            echo 'Déploiement avec Ansible...'
            sh 'ansible-playbook Ansible.yml'
        }
    }
}
