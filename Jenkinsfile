pipeline {
    agent any
    tools {
        maven "MAVEN3"
    }
    environment {
        DOCKERHUB_PWD = credentials('CredentialID_DockerHubPwd')
    }
    stages {
        // Check out stage
        stage("Check out") {
            steps {
                git branch: 'master', url: 'https://github.com/dlaylay/COMP367MavenWebApp_Deanne'
            }
        }

        // Build maven project stage
        stage("Build maven project") {
            steps {
                bat 'mvn clean install'
            }
        }

        // Unit test stage
        stage("Unit test") {
            steps {
                bat "mvn test"
            }
        }

        // Docker login stage
        stage("Docker login") {
            steps {
                script {
                    // Step d: Docker login using Jenkins credentials
                    bat "docker login -u $osmdee -p $DOCKERHUB_PWD"
                }
            }
        }

        // Docker build stage
        stage("Docker build") {
            steps {
                script {
                    bat 'docker build -t osmdee/comp367mavenwebapp_deanne:1.0 .'
                }
            }
        }

        // Docker push stage
        stage("Docker push") {
            steps {
                script {
                    // Step f: Docker push to Docker Hub
                    bat 'docker push osmdee/comp367mavenwebapp_deanne:1.0'
                }
            }
        }
    }
}
