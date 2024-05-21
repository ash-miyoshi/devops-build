pipeline {
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-hub-ash6842')
    GIT_REPO_URL = 'https://github.com/ash-miyoshi/devops-build.git'
    GIT_BRANCH = 'dev'
    GITHUB_CREDENTIALS = credentials('jenkins-github')
    }
    stages { 
        stage('SCM Checkout') {
            steps {
                // Checkout the code from the specified branch
                git branch: env.GIT_BRANCH, url: env.GIT_REPO_URL, credentialsId: env.GITHUB_CREDENTIALS
            }
        }

        stage('Build docker image') {
            steps {  
                sh 'docker build -t valaxy/nodeapp:$BUILD_NUMBER .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                sh 'docker push valaxy/nodeapp:$BUILD_NUMBER'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}
