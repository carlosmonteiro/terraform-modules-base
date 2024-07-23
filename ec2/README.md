# EC2 Module

This module creates an EC2 instance.

## Inputs

- `ami`: AMI ID for the EC2 instance.
- `instance_type`: Instance type for the EC2 instance.
- `subnet_id`: Subnet ID where the EC2 instance will be deployed.
- `name`: Name of the EC2 instance.

## Outputs

- `instance_id`: ID of the created EC2 instance.
- `public_ip`: Public IP of the created EC2 instance.

## Example Usage

```hcl
module "ec2" {
  source = "git::https://github.com/your-username/terraform-modules.git//ec2"
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id = module.vpc.public_subnet_ids[0]
  name = "my-ec2-instance"
  tags = module.tags.tags
}