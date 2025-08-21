pipeline {
  agent any

  stages {
    stage('Build docker') {
      steps {
        sh 'npm run docker:build'
      }
    }
    stage('Run tests') {
      steps {
        sh 'ls /app'
        sh 'npm run docker:run'
      }
    }
  }
}