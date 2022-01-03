FROM ubuntu:18.04
RUN apt-get update \
     && apt-get install -y openjdk-11-jdk \
        curl \
        maven \
        mysql-client \
        maven \
        net-tools \
        iputils-ping
CMD ["/bin/bash","-c","tail -f /dev/null"]
