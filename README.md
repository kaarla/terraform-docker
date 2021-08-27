# Build docker image with Go and terraform

`Go` will be used for running terratest.

- go 1.17
- terraform 0.15
- tflint 0.20.3
- terratest log parser 0.30.12

Use the already published image

        

Build your image with the following command

        docker build -t go-tf .

Test it by running a container in interactive mode

        docker run -it --rm go-tf /bin/ash