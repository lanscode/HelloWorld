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
			  stage('Deploy in Tomcat Test'){
			     steps{
			        build job:'Helloworld_deploy_test'
			        }
	            } 
	          stage('Deploy in Tomcat Prod'){
	            steps{
		             timeout(time:5,unit:'DAYS'){
		              input "Approuve prod deploy job run before it descard in 5 days"
		             }
			        build job:'Helloworld_deploy_test'
			      }
	           }   
		    
		   
	    }
}
