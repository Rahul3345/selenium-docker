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
        bat "docker build -t=rahul111232/selenium"
    }
    }
     stage('Push Image')
    {
          steps{
        echo "docker push rahul111232/selenium"
    }
    }
    }
}