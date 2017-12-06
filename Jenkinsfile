node {
    stage('Clone repository') {

        checkout scm
    }

    stage('Build image') {

    def customImage = docker.build("lua_nginx", "-f docker_folder/Dockerfile .")
    customImage.push()

    customImage.push('latest')

    }

    stage('deploy_container with new config and data ') {

    sh '''p_m_n=$(cat ../aws_d-m.conf)
    sudo docker-machine ssh $p_m_n sudo docker rm -f lua_nginx
    sudo docker-machine ssh $p_m_n sudo docker run -d -p 80:80 --name lua_nginx boodman/lua_nginx
    '''
    }
}
