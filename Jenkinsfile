pipeline {
    agent any
    tools {
    maven "Maven-3.9.9" // Assuming you have Maven 3.9.9 configured in Jenkins tools
    }

    stages {
        
        stage('Checkout Code') {
            steps {
                echo "Cloning GitHub repo"
                checkout scm
            }
        }
         stage('Build') {
            steps {
                // REMOVED: sh 'sudo apt install maven -y'
            // This line is problematic because:
            // 1. You shouldn't typically install tools via 'apt' inside a Jenkins pipeline if you're using `tools {}`.
            //    Jenkins' `tools` directive handles providing Maven to the build environment.
            // 2. It requires 'sudo' privileges, which means the Jenkins user on the agent needs NOPASSWD sudo access,
            //    which is a security concern and often not configured by default.
            // 3. 'apt' commands can also get stuck if another apt process is running or a lock file exists.

            // This command will use the Maven version configured via the `tools` directive.
            sh 'mvn clean install -DskipTests'
            }
        }
    }
}
