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
                sh 'sudo apt install maven -y'
                sh 'mvn clean package -DskipTests'
            }
        }
    }
}
