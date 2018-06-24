#!/bin/bash

HOST="34.243.242.180"
EC2_USER="ec2-user"
KEY_FILE="~/.ssh/devopstest.pem"
IMAGE="~DOCKER_USER/dockercmd"

mkdir ~/.ssh
echo "$PKEY" >> $KEY_FILE
ssh $HOST -l $EC2_USER -i "$KEY_FILE" "sudo docker pull $IMAGE:$VERSION && sudo docker stop $CONTAINER && sudo docker rm $CONTAINER && sudo docker run --name $CONTAINER $IMAGE:$VERSION"
workflows:
  version: 2
  build_and_deploy:
    jobs:
      - build 
      - deploy:
          requires:
            - build