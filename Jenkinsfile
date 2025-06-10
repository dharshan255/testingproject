pipeline {
    agent any

    stages {
        
        stage('Checkout Code') {
            steps {
                echo "Cloning GitHub repo"
                checkout scm
            }
        }
         stage('Build') {
            steps {
                echo "Building project without tests"
                sh 'mvn clean package -DskipTests'
            }
        }
    }
}
