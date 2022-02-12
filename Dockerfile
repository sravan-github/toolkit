FROM ubuntu:18.04
RUN apt-get update \
     && apt-get install -y openjdk-11-jdk \
        curl \
        mysql-client \
        maven \
        net-tools \
        iputils-ping \
        wget 
RUN wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
RUN unzip ./ terraform_0.12.2_linux_amd64.zip –d /usr/local/bin
CMD ["/bin/bash","-c","tail -f /dev/null"]
