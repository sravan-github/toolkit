FROM ubuntu:18.04
RUN apt-get update \
     && apt-get install -y openjdk-11-jdk \
        curl \
        maven
CMD["/bin/bash","-c","tail -f /dev/null"]
