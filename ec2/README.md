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
