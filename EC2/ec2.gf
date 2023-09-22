provider "aws" {
    region = "ap-northeast-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "ex" {
    ami           = ""
    instance_type = "t2.micro"

    tags = {
        Name = "MyEC2"
    } 
}

output "public_ip" {
    value = aws_instance.ex.public_ip
}
