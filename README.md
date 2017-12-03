# TODO info

1 - create 3 jenkins jobs - "REFER 1"
    1.1-  build new docker image and push it to DockerHub
      1.2- use WebHook to triger new job

2 - rebuild container with new data and config
    2.1- if git Webhook is trigered - "REFER 2"
      2.2- create new ECS2 instance and deploy container there
         2.3- kill previous instance    

3 - deploy job if - "REFER 1" / - "REFER 2" has been triggered deploy
     container to EC2 instance

 $$ $$ $$ $$ $$ $$ $$ $$ $$

 https://hub.docker.com/u/boodman/
" docker profile "

 https://hub.docker.com/r/boodman/first_nginx_image/
" only nginx with custon data "

 https://hub.docker.com/r/boodman/lua_nginx/
 "nginx with lua_module"

 https://github.com/FIKUS0FIN/Nginx_deploy
 "git repo"
