#TODO info

  1 - create 3 jenkins jobs - "REFER 1"
    1.1 -  build new docker image and push it to DockerHub
      1.1.1 - use WebHook to triger new job
    1.2 - rebuild container with new data and config
      1.2.1 - if git Webhook is trigered - "REFER 2"
      1.2.1 - create new ECS2 instance and deploy container there
      1.2.2 - kill previous instance    
    1.3 - deploy job if - "REFER 1" / - "REFER 2" has been triggered deploy
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
