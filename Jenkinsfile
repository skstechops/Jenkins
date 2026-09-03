
pipeline {

    agent any

    stages {

        stage('Git Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/skstechops/Jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Build Started'

                sh 'test -f indexjen.html'
                sh 'test -f test.sh'

                echo 'Build Completed'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Test'

                sh 'chmod +x test.sh'
                sh './test.sh'

                echo 'Test Completed'
            }
        }
    }
}
