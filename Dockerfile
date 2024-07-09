FROM bellsoft/liberica-openjdk-alpine:17.0.11

# Install curl and jq

RUN apk add curl jq
#workspace
WORKDIR /home/selenium-docker

#add the required files
ADD target/docker-resources ./
ADD runner.sh runner.sh
#Env Variables


#Start the runner.sh the Tests
ENTRYPOINT sh runner.sh


