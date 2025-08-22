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
        reportDir: 'test-results',
        reportFiles: 'index.html',
        reportName: 'Test report',
        reportTitle: 'The report'
      ])
    }
  }
}