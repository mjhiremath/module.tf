module "prod-ec2" {
  source = "./blueprint/compute"

  image = data.aws_ami.ami.id
  type = var.prod-type
  az = var.prod-az[2]
}

module "prod-network" {
  source = "./blueprint/network"
  vpc = var.prod-vpc
  sub = var.prod-sub
  vpc-id = module.prod-network.vpc-id
}