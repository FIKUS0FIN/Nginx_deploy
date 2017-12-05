node {
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {

        sh 'bash sudo scrips/build_container.sh'
    }

    stage('Test image') {

        sh 'bash sudo scrips/create-d_m.sh'
    }
}
