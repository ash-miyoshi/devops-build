pipeline {
    agent any
    environment {
        GIT_REPO_URL = 'https://github.com/ash-miyoshi/devops-build.git'
        GIT_BRANCH = 'dev'
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-ash6842') // Change to the ID of your Docker Hub credentials in Jenkins
        GITHUB_CREDENTIALS = credentials('jenkins-github') // Change to the ID of your GitHub credentials in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the specified branch
                git branch: env.GIT_BRANCH, url: env.GIT_REPO_URL, credentialsId: env.GITHUB_CREDENTIALS
            }
        }

        stage('Getting info') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_USR'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW'
                sh 'echo $GITHUB_CREDENTIALS'
                sh 'End of Jenkinsfile'
            }
        }
}