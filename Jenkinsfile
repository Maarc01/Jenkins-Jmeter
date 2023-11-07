 pipeline {

     agent any
		
		stages {
			stage('Clone repo') {
				steps {
                git branch: 'main', credentialsId: 'CI_bitbucket_with_password', url: 'https://github.com/Maarc01/Jenkins-Jmeter.git'
            }
        }
        stage ('Build test Docker') {
            steps {
                script {
				bat 'docker build -t script-image ./'
                     }
            }
        }
      
        stage ('Run Jmeter Docker') {
            steps {
				script{
                bat 'docker run -t -v D:\DevOps\Jenkins\Jenkins-Jmeter:/data script-image:latest orange123.jmx'
				}
			}
        }
		
		}
	}