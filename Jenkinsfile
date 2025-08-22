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
        sh "docker run --rm -v ${WORKSPACE}/playwright-report:/app/playwright-report -w /app pw-dockering-base npx playwright test"
      }
    }
  }
  post {
    always {
      publishHTML([
        allowMissing: false,
        alwaysLinkToLastBuild: true,
        keepAll: true,
        reportDir: 'playwright-report',
        reportFiles: 'index.html',
        reportName: 'Playwright Test Report'
      ])
    }
  }
}
