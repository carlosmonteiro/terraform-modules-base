# VPC Module

This module creates a VPC and public subnets.

## Inputs

- `cidr_block`: CIDR block for the VPC.
- `name`: Name of the VPC.
- `public_subnet_cidrs`: List of public subnet CIDR blocks.

## Outputs

- `vpc_id`: ID of the created VPC.
- `public_subnet_ids`: IDs of the created public subnets.

## Example Usage

```hcl
module "vpc" {
  source = "git::https://github.com/seu-usuario/terraform-modules.git//vpc"
  cidr_block = "10.0.0.0/16"
  name = "my-vpc"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}