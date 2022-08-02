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
			        bat'docker build -f Dockerfile -t myHelloWorld:1.0'
			        }
	          } 
	         
	    }

}
