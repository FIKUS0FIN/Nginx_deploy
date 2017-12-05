node {
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {

    sh '''sudo docker build -t lua_nginx docker_folder > raw.log
    IMG_ID=$(cat raw.log | grep "Successfully built" | awk \'{print $3}\')
    sudo docker tag $IMG_ID boodman/lua_nginx
    sudo docker push boodman/lua_nginx
    '''
    
    }

    stage('triger job deploy_container ') {

        build job: 'setup-new-machine', parameters: [text(name: 'REGION', value: 'eu-central-1'), text(name: 'NAME', value: 'Jenkins-auto'), text(name: 'PORT', value: '80'), text(name: 'deploy_container', value: 'boodman/lua_nginx')]
    }
}
