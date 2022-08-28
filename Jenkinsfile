pipeline{
    
    agent any
    
    stages{
        stage('SCM'){
            steps{
                git 'https://github.com/gopal'
            }
        }
        stage('Docker Build and Run'){
            steps{
                sh '''
                docker build -t sample:${BUILD_NUMBER} .
                '''
            }
        }
    }
}
