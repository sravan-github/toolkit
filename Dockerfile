FROM ubuntu:latest
RUN apt-get update \
    apt-get install gsutil

CMD ["/bin/bash","-c","tail -f /dev/null"]
