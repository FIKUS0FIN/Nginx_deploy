node {
    stage('Clone repository') {

        checkout scm
    }

    stage('Build image') {

    sh '''sudo docker build -t lua_nginx docker_folder > raw.log
    IMG_ID=$(cat raw.log | grep "Successfully built" | awk \'{print $3}\')
    sudo docker tag $IMG_ID boodman/lua_nginx
    sudo docker push boodman/lua_nginx
    '''
    }

    stage('deploy_container with new config and data ') {

    sh '''p_m_n=$(cat ../aws_d-m.conf)
    sudo docker-machine ssh $p_m_n sudo docker stop lua_nginx
    exit 0
    sudo docker-machine ssh $p_m_n sudo docker rm lua_nginx
    exit 0
    sudo docker-machine ssh $p_m_n sudo docker run -d -p 80:80 --name lua_nginx boodman/lua_nginx
    '''
    }
}
