<<<<<<< HEAD
FROM tomcat:8.0

ADD **/*.war /src/local/tomcat/webapps

EXPOSE 8180
 # OPEN THIS PORT on the machine where docker is running
CMD ["catalina.sh","run"]

=======
pipeline{
     agent any
     stages{
	     stage('Build Application'){
		     steps{
		        bat 'mvn clean package'
		      }
		  }
	      stage('Deploy in Tomcat'){
		     steps{
		        build job:'Helloworld_deploy_test'
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
>>>>>>> cc76a03 (docker integration)
