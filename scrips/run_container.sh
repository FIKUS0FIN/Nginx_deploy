#!/bin/bash
#===============================================================================
p_m_n=$(cat ../aws_d-m.conf)
sudo docker-machine ssh $p_m_n sudo docker stop lua_nginx
exit 0
sudo docker-machine ssh $p_m_n sudo docker run -d -p 80:80 --name lua_nginx boodman/lua_nginx
