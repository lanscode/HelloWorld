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
	     stage('Deploy in Tomcat'){
		     build job:'Helloworld_deploy_test'
	     }   
   }
}
