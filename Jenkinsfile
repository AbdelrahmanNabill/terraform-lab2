pipeline {
    agent any
    
    tools {
      terraform 'tf'
    }

    stages {
      
        stage('terraform init') {
            steps {
                withAWS(credentials: 'jenkins_aws'){
                    sh 'terraform init'
                }
            }
        }
        
        stage('terraform apply') {
            steps {
                withAWS(credentials: 'jenkins_aws'){
                    sh 'terraform apply --auto-approve -var-file="terraform-dev.tfvars"'
                }
            }
        }

        stage('terraform destroy') {
            steps {
                withAWS(credentials: 'jenkins_aws'){
                    sh 'terraform destroy --auto-approve -var-file="terraform-dev.tfvars"'
                }
            }
        }

    }
}
