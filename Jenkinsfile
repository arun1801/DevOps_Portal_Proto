node("docker")
{
 stage("Application Git Checkout")
 {
   println "Checking out the code from GitHub Repository...."
   git credentialsId: 'git-cred', url: 'https://github.com/arun1801/DevOps_Portal_Proto.git'
   sh 'jar -cvf devOps.war *'
 }
}
