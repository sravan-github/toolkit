FROM ustcmirror/gsutil-rsync:latest
RUN apt-get update \
     && apt-get install -y openjdk-11-jdk \
        curl \
        git \
        net-tools \
        iputils-ping \
        wget \
        python \
        unzip \
        ansible \
        jq

CMD ["/bin/bash","-c","tail -f /dev/null"]
