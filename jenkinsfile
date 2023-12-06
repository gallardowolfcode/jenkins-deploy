pipeline {
    agent any

    stages {
        stage('Git Pull') {
            steps {
                // Aquí se realiza el git pull desde el repositorio
                // git pull
            }
        }

        stage('Unit Test') {
            steps {
                // Aquí puedes ejecutar pruebas si tienes
                // En caso contrario, pasa directamente a la siguiente etapa
            }
            post {
                success {
                    echo 'Las pruebas pasaron, continuando...'
                }
                failure {
                    echo 'Las pruebas fallaron, rechazando el código...'
                    currentBuild.result = 'FAILURE'
                    error('Las pruebas han fallado.')
                }
            }
        }

        stage('Build Image') {
            steps {
                // Construir la imagen Docker con el HTML
                // Puedes utilizar un Dockerfile para esto
                // Ejemplo: docker build -t nombre_imagen .
            }
        }

        stage('Push to Docker Hub') {
            steps {
                // Subir la imagen Docker al Docker Hub
                // Ejemplo: docker push usuario/nombre_imagen
            }
        }
    }
}
