pipeline {
    agent any
    
    tools{
        terraform 'terraform'
    }

    stages {
        
        stage('Git Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/showmikb/terraform-tower-weekend.git']])
            }
        }
        
        
        stage('Terraform Init') {
            steps {
               sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
               sh 'terraform plan -var-file environments/dev.tfvars'
            }
        }
        
        stage('Terraform Apply') {
            steps {
               sh 'terraform apply -var-file environments/dev.tfvars --auto-approve'
            }
        }
    }
}
