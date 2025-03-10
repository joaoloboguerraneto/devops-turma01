terraform {
  backend "s3" {
    bucket                  = "tfstate-iac-devops"
    key                     = "terraform.tfstate"
    region                  = "us-east-1"
    encrypt                 = true
  }
}


resource "aws_instance" "app_server" {
    ami             =   var.ami
    instance_type   =   var.instance_type
    key_name        =   var.key_name
    tags            =   var.instance_tags
}

