pipeline {
    agent { label 'DEV'}
    triggers { pollSCM ('* * * * *') }
    stages {
        stage('clone_the_url') {
            steps {
                git branch: 'main',
                       url: 'https://github.com/maheshryali123/terraform_jenkins.git'
            }
        }
        stage('terraform_intitialize') {
            steps {
                sh """
                terraform init
                terraform apply -auto-approve
                """
            }
        }
    }
}