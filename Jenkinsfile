//   pipeline {

//      agent any


// 	 parameters {

// choice(

// choices: ['child-job-1', 'child-job-2'],

// name: 'SelectedPipeline'

// )

// }
		
// 		stages {
// 			stage('Clone repo') {
// 				steps {
//                 git branch: 'main', credentialsId: 'CI_bitbucket_with_password', url: 'https://github.com/Maarc01/Jenkins-Jmeter.git'
//             }
//         }
//         stage ('Build test Docker') {
//             steps {
//                 script {
// 				bat 'docker build -t script-image ./'
// 				bat 'docker build -t python-image ./'
//                      }
//             }
//         }
		
// 		stage {

// 			if (Value == '%X%'){
	
// 		stage ('Run Jmeter Docker') {
//             steps {
// 				script{
//                 bat 'docker run -t -v D:\\DevOps\\Jenkins\\Jenkins-Jmeter:/data script-image:latest %ImageName%'
// 				}
// 			}
//         }
// 			}
// 			else {
// 		stage ('Run Docker 2'){
// 			steps {
// 				script {
// 					bat 'docker run -t -v D:\\DevOps\\Jenkins\\Jenkins-Jmeter:/data python-image %ImageName%'
// 				}
// 			}
		
// 		}
// 		}
// 		}
// 	}

// 	//clear workspace and prune all immages

// 	//     post {
//     //     always {
//     //         cleanWs()
// 	// 		bat 'docker system prune --all -f'
//     //     }
//     // }   

// 	}



  pipeline {

     agent any


	 parameters {

choice(

choices: ['test-job-1', 'test-job-2'],

name: 'SelectedPipeline'

	)

	 }

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
				bat 'docker build -t python-image ./'
                     }
            }
        }

stages {

	if (selectedPipeline == 'main-job-1') {

stage('Main Pipeline') {

steps {

echo 'Running main pipeline...'

script {

def selectedPipeline = "${params.SelectedPipeline}"



if (selectedPipeline == 'test-job-1') {

	stage ('Run Jmeter Docker') {
            steps {
				script{
                bat 'docker run -t -v D:\\DevOps\\Jenkins\\Jenkins-Jmeter:/data script-image:latest %ImageName%'
				}
			}
        }

} else if (selectedPipeline == 'test-job-2') {

stage ('Run Docker 2'){
			steps {
				script {
					bat 'docker run -t -v D:\\DevOps\\Jenkins\\Jenkins-Jmeter:/data python-image %ImageName%'
				}
			}
		
		}

} 

else {

echo 'Invalid pipeline selection:'

${selectedPipeline}"

	}
	}
	}
	}
	}
	}
  }
  }
  