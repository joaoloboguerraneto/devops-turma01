variable "name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = "DevOps-Turma01"
}

variable "profile" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = "devops"
}


variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-06e02ae7bdac6b938"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = "iac-devops"
}

variable "instance_tags" {
  description = "Additional tags for the instance"
  type        = map(string)
  default     = {
    Name        =   "DevOps"
    Environment =   "Dev"
  }
}

variable "region" {
  description = "Name to be used on EC2 region created"
  type        = string
  default     = "eu-west-3"
}