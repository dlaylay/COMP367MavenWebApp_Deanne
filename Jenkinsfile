pipeline {
    agent any
    tools {
        maven "MAVEN3"
    }
    stages {
        stage("Check out") {
            steps {
                git branch: 'master', url: 'https://github.com/dlaylay/COMP367MavenWebApp_Deanne'
            }
        }
        stage("Build maven project") {
            steps {
                bat 'mvn clean install'
            }
        }
        stage("Unit test") {
            steps {
                bat "mvn test"
            }
        }
        stage("Docker build") {
            steps {
                script {
                    bat 'docker build -t osmdee/comp367mavenwebapp_deanne:1.0 .'
                }
            }
        }
    }
}
