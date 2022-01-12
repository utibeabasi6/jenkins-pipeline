pipeline {
  agent any
  stages { 

    // Provisioning Infrastructure with Terraform
    stage("Provisioning Infrastructure") {
      steps {
        sh "make up"
      }
    }
    // Configuring Servers with "install.yaml" Playbook
    stage("Configuring Servers with Ansible") {
      steps {
        sh "make output"
        sh "ansible-playbook -i ansible/inventory ansible/install.yaml" 
      }
    }

    // Deploying to Dev Environment with "deploy.yaml" Playbook
    stage("Deploying to Dev Environment") {
      steps {
        sh "make output-dev"
        sh "ansible-playbook -i ansible/inventory ansible/deploy.yaml" 
      }
    }

    stage('Deploying to Prod Environment') {
      when { tag "release-*" }
      steps {
          echo 'Deployment triggered by tagged commit....'
          sh "make output-prod"
          sh "ansible-playbook -i ansible/inventory ansible/deploy.yaml"
      }
  }
  }

}
