FROM golang:1.19-alpine3.17

RUN apk add gcc
RUN apk add musl-dev

RUN wget https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_linux_amd64.zip && \
    unzip terraform_1.3.6_linux_amd64.zip && \
    mv terraform /usr/local/bin/

RUN wget -qO- https://github.com/terraform-linters/tflint/releases/download/v0.20.3/tflint_linux_amd64.zip -O tflint.zip && \
    unzip tflint.zip && \
    chmod +x tflint && \
    mv tflint /usr/local/bin

RUN wget -qO- https://github.com/gruntwork-io/terratest/releases/download/v0.30.12/terratest_log_parser_linux_amd64 -O terratest_log_parser && \
    chmod +x terratest_log_parser && \
    mv terratest_log_parser /usr/local/bin
