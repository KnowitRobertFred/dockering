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
        sh 'npm run docker:run'
      }
    }
  }
  post {
    always {
      archiveArtifacts artifacts: 'test-results/**/*', 
      allowEmptyArchive: true,
      publishHTML(target: [
        reportName: 'Playwright report',
        reportDir: 'test-results',
        reportFiles: 'index.html',
        keepAll: true
      ])
    }
  }
}