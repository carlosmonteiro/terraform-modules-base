# Terraform Modules

This repository contains reusable Terraform modules for creating and managing AWS resources.

## Modules

- [VPC Module](./vpc/README.md): Creates a VPC with public subnets.
- [EC2 Module](./ec2/README.md): Creates an EC2 instance.

## Using the Modules

Here is an example of how to use the VPC and EC2 modules from this repository in your Terraform configuration:

```hcl
module "vpc" {
  source = "git::https://github.com/your-username/terraform-modules.git//vpc"
  cidr_block = "10.0.0.0/16"
  name = "my-vpc"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "ec2" {
  source = "git::https://github.com/your-username/terraform-modules.git//ec2"
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id = module.vpc.public_subnet_ids[0]
  name = "my-ec2-instance"
}
