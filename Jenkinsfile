pipeline{

    agent any

    stages{
    stage('Build Jar')
    {
        steps{
    bat "mvn clean package -DskipTests"
    }
    }
    stage('Build image')
    {
          steps{

        bat "docker build -t=rahul111232/selenium:latest ."
    }
    }
     stage('Push Image')
    {    environment{
                         DOCKER_HUB = credentials('dockerhub-creds')
                     }
          steps{
          bat "docker login -u %DOCKER_HUB_USR% -p %DOCKER_HUB_PSW%"
          bat "docker push rahul111232/selenium:latest"
          bat "docker tag rahul111232/selenium:latest rahul111232/selenium:${env.BUILD_NUMBER}"
          bat "docker push rahul111232/selenium:${env.BUILD_NUMBER}"
    }
    }
    }

    post{
    always{
    bat "docker logout"
    }
    }

}