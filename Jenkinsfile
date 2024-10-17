    pipeline {
        agent any
        tools {
            maven 'MAVEN3'
            jdk 'JDK'
        }
        stages {
            stage('Checkout') {
                steps {
                    git branch: 'main', url: 'https://github.com/dlaylay/COMP367MavenWebApp_Deanne.git'
                }
            }
            stage('Maven Build') {
                steps {
                    bat 'mvn clean package'
                }
            }
            stage('Test') {
                steps {
                    bat 'mvn test'
                }
            }
        }
        post {
            success {
                echo 'Build and test stages completed successfully!'
            }
            failure {
                echo 'Build failed.'
            }
        }
    }
