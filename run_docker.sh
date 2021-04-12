#!/bin/bash

comment="##############################"

comment_frame () {
    printf '%s\n\n' "$comment"
    echo "$1"
    printf '%s\n\n' "$comment"
}





comment_frame "Stopping old container"
#turn off old container
docker container ls | grep todo | cut -d " " -f 1 | xargs docker stop


comment_frame "Currently building out container"
# Build image and add a descriptive tag
docker build --tag todo .


echo "Check for todo container"
# List docker images
#docker image ls
docker image ls | grep todo | tr -s " "


comment_frame "Starting app on 8000:80"
# Run flask app
docker run -d -p 5000:80 todo
