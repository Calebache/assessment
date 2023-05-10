pipeline {
    agent any

    stages {
        stage('ansible deploy') {
            steps {
                sh "ansible-playbook ./ansible/terraformpb.yaml"
            }
        }
    }
}
