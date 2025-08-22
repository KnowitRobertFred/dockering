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
      publishHTML(target: [allowMissing: false,
        alwaysLinkToLastBuild: true,
        keepAll: true,
        reportDir: 'playwright-report',
        reportFiles: 'index.html',
        reportName: 'Test report',
        reportTitles: 'The report'
      ])
    }
  }
}