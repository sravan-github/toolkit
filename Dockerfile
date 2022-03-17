FROM ubuntu:18.04
RUN apt-get update \
     && apt-get install -y openjdk-11-jdk \
        curl \
        git \
        maven \
        net-tools \
        iputils-ping \
        wget \
        python \
        unzip \
        ansible \
        python-pip \
        jq
RUN pip install requests google-auth
RUN wget https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_linux_amd64.zip
RUN unzip ./terraform_1.1.7_linux_amd64.zip
RUN cp -r terraform /usr/local/bin/
RUN apt-get install apt-transport-https ca-certificates gnupg
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update && sudo apt-get install google-cloud-sdk
RUN apt-get install google-cloud-sdk-app-engine-java

CMD ["/bin/bash","-c","tail -f /dev/null"]
