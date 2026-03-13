pipeline {
agent any

stages {

    stage('Build Application') {
        steps {
            sh 'mvn clean package'
        }
    }

      stage('Set Docker Env') {
         steps {
            sh 'eval $(minikube docker-env)'
         }
    }
   
     stage('Build Docker Image') {
        steps {
            sh 'docker build -t java-app .'
        }
    }
   

    stage('Deploy to Kubernetes') {
        steps {
            sh 'kubectl apply -f kubernetes/'
        }
    }

  }

}


