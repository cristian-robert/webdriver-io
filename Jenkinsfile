pipeline {
    agent any

    tools {
        nodejs "nodejs" // The name you gave your NodeJS installation in Global Tool Configuration
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npx wdio run ./wdio.conf.js' // Adjust the command according to your setup
            }
        }
    }
}
