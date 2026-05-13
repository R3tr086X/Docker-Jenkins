pipeline {
    agent any

    environment {
        ROOT_PASSWORD = credentials('Admin1.')
    }

    stages {

        stage('Limpieza') {
            steps {
                sh 'docker compose down --remove-orphans'
            }
        }

        stage('Despliegue seguro') {
            steps {
                sh 'docker compose up --build -d'
            }
        }
    }
}
