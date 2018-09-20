node("docker")
{
 stage('Application Git Checkout and War Generation')
 {
   println "Checking out the code from GitHub Repository...."
   git credentialsId: 'git-cred', url: 'https://github.com/arun1801/DevOps_Portal_Proto.git'
   sh 'jar -cvf devOps.war WebContent/*'
 }
 
 stage('Build Docker Image')
 {
  sh 'docker build -t arunsingh1801/tomcat_demo:1.0.0 .'
 }
 
 stage('Push Docker Image to Docker Hub')
 {
  withCredentials([string(credentialsId: 'DocekrHubPwd', variable: 'dockerHubPwd')]) {
    sh "docker login -u arunsingh1801 -p ${dockerHubPwd}"
}
   sh 'docker push arunsingh1801/tomcat_demo:1.0.0'
}

 stage('Run Docker Container Application on Test Server')
 {
  def dockeRemoveContainer = 'docker rm $(docker ps -a -f name=DevOps_Demo)'
  def dockerRun = 'docker run -p 8080:8080 -d --name DevOps_Demo arunsingh1801/tomcat_demo:1.0.0'
  sshagent(['ssh-key'])
  {
    sh "ssh -o StrictHostKeyChecking=no arun@10.0.2.15 ${dockerRun}"
  }
 }

}
