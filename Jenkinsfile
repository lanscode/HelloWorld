pipeline{
     agent any
     stages{
	     stage('Build Application'){
		     steps{
		        bat 'mvn clean package'
		      }
			     success{
			        archiveArtifacts artifacts: '**/*.war'
			       }
		    }
	    }
}