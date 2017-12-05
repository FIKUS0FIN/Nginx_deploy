node {
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {

        sh 'scrips/build_container.sh'
    }

    stage('triger job deploy_container ') {

        build job: 'setup-new-machine', parameters: [text(name: 'REGION', value: 'eu-central-1'), text(name: 'NAME', value: 'Jenkins-auto'), text(name: 'PORT', value: '80'), text(name: 'deploy_container', value: 'boodman/lua_nginx')]
    }
}
