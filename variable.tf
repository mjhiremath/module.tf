data "aws_ami" "ami" {
  owners = ["704109570831"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ztna_ubuntu*"]
  }

  filter {
    name   = "architecture"
    values = ["x86*"]
  }
}

variable "prod-type" {
  default = "t2.micro"
}

variable "prod-az" {
  default = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "prod-vpc" {
  default = "172.30.0.0/16"
}

variable "prod-sub" {
  default = "172.30.10.0/24"
}
