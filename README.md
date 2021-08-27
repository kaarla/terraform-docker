# Build docker image with Go and terraform

- go 1.17
- terraform 0.15
- tflint 0.20.3
- terratest log parser 0.30.12

> docker build -t go-tf .

> docker run -it --rm go-tf /bin/ash