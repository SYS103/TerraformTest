provider "aws" {
    region = "eu-central-1"
}

resource "aws_instance" "TestTerraJenkins" {
    ami           = "ami-01647a9d15b15e0af" # Microsoft Windows Server 2022 Base
    instance_type = "t2.micro"
    tags = {
        Name = "TestTerraJenkins"
    }
}

output "instance_ip" {
    value = aws_instance.TestTerraJenkins.public_ip
}
