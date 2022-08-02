pipeline{
     agent any
     stages{
	    stage('Build Application'){
		     steps{
		        bat 'mvn clean package'
		      }
		  }
	    stage("Deploy in docker"){
			steps{
				bat "docker build -f Dockerfile -t myHelloWorld:1.0 "
			}
		}
    }
}
