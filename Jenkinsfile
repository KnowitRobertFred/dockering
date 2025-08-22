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
        sh 'ls -l /app'
      }
    }
  }
  post {
    always {
      publishHTML(target: [allowMissing: false,
        alwaysLinkToLastBuild: true,
        keepAll: true,
        reportDir: 'test-results',
        reportFiles: 'index.html',
        reportName: 'Test report',
        reportTitles: 'The report'
      ])
    }
  }
}