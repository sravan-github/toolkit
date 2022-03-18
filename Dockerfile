FROM ubuntu:latest
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - 
RUN apt-get update 
RUN apt-get install google-cloud-sdk -y

CMD ["/bin/bash","-c","tail -f /dev/null"]
