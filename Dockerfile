FROM ubuntu:21.10

ENV TZ=America/Cancun 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \ 
    apt update && \
    apt upgrade -y 

RUN apt install curl -y && \
    apt install wget -y && \
    apt install unzip -y && \


    apt install git -y && \
    apt install ssh -y && \
    apt install tar && \
    apt install gzip

RUN wget https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip && \
    unzip terraform_0.15.0_linux_amd64.zip && \
    mv terraform /usr/local/bin/

RUN wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | tar -xz -C /usr/local && \
    export PATH=$PATH:/usr/local/go/bin && \
    . ~/.profile

RUN wget -qO- https://github.com/terraform-linters/tflint/releases/download/v0.20.3/tflint_linux_amd64.zip -O tflint.zip && \
    unzip tflint.zip && \
    chmod +x tflint && \

    wget -qO- https://github.com/gruntwork-io/terratest/releases/download/v0.30.12/terratest_log_parser_linux_amd64 -O terratest_log_parser && \
    chmod +x terratest_log_parser
   

LABEL com.circleci.preserve-entrypoint=true