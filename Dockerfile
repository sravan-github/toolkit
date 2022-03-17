FROM ubuntu:latest
RUN apt-get update \
    apt-get install apt-transport-https ca-certificates gnupg \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    echo "deb https://packages.cloud.google.com/apt cloud-sdk main" |  tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - \
    apt-get update && sudo apt-get install google-cloud-cli \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-cli main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-cli -y \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | tee /usr/share/keyrings/cloud.google.gpg && apt-get update -y && apt-get install google-cloud-sdk -y \
    apt-get install google-cloud-cli-app-engine-java

CMD ["/bin/bash","-c","tail -f /dev/null"]
