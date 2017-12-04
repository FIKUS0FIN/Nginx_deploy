#/bin/bash

IMG_ID=$(sudo docker build -t lua_nginx docker_folder \
| grep "Successfully built" | awk '{print $3}')

sudo docker tag $IMG_ID boodman/lua_nginx
sudo docker push boodman/lua_nginx
sudo docker rmi -f $IMG_ID
