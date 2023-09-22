provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIA2VDGXKWKKXQMJ7UE"
    secret_key = "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"
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
