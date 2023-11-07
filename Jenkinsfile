 pipeline {

     agent any
		
		stages {
			stage('Clone repo') {
				steps {
                git branch: 'main', credentialsId: 'CI_bitbucket_with_password', url: 'https://github.com/Maarc01/DevOps.git'
            }
        }
        stage ('Build test Docker') {
            steps {
                script {
				bat 'docker build -t jmeter-docker ./'
                     }
            }
        }
      
        stage ('Run Jmeter Docker') {
            steps {
				script{
                bat 'docker run -t -v D:\\DevOps\\Jenkins\\DevOps:/data orange123.jmx'
				}
			}
        }
		
		}
	}