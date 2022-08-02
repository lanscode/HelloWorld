pipeline{
     agent any
     stages{
	    stage('Build Application'){
		     steps{
		        bat 'mvn clean package'
		      }
			   post{
			      success{
			         archiveArtifacts artifacts: '**/*.war'
			        }
			      }
		    }
			stage('Deploy in Docker'){
			     steps{
<<<<<<< HEAD
			        bat'docker build -f Dockerfile -t myhelloworld:1.0 .'
=======
			        bat'docker build -f Dockerfile -t myHelloWorld:1.0'
>>>>>>> 560f923 (docker integration)
			        }
	          } 
	         
	    }

}
