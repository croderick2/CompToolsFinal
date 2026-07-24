pipeline {
	agent any

	stages {
		stage('Terraform Activation') {
			steps {
				sh 'terraform init'
				sh 'terraform apply -auto-approve'
				}
			}
				
		}
	}
