#!/bin/bash

##global vars
#previous_mashine_id=$(cat ../aws_id.conf)
#previous_mashine_name=$(cat ../aws_d-m.conf)

#===============================================================================
function kill_aws()
{
  if [[ [$1 -eq 0] || [$2 -eq 0]  ]]; then
    previous_mashine=$1
    previous_mashine_name=$2
    sudo docker-machine kill $previous_mashine
    sudo docker-machine rm -y $previous_mashine_name
  fi
}

function create_ec2()
{
  NAME=$1
  #=============================================================================
  sudo docker-machine create --driver amazonec2 --amazonec2-open-port ${PORT} \
  --amazonec2-region ${REGION} ${NAME}-${BUILD_ID}
}

function put_info
{
  AWS_ID=$(sudo docker-machine inspect ${NAME}-${BUILD_ID} | grep InstanceId \
  | awk '{print $2}' | awk -F "\"" '{print $2}')
  echo "${NAME}-${BUILD_ID}" > ../aws_d-m.conf
  awless show $AWS_ID
  #statements
}

function deploy_container()
{
  container=$1
  sudo docker-machine ssh ${NAME}-${BUILD_ID} sudo docker run -d -p ${PORT}:80 --name lua_nginx $container
  #statements
}

#body===========================================================================

create_ec2 ${NAME}
#kill_aws $previous_mashine_id $previous_mashine_name
put_info
deploy_container ${deploy_container}
