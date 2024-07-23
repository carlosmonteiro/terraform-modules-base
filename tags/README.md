# Tags Module

This module standardizes the tags for resources, ensuring that each resource has the four mandatory tags and allowing for additional custom tags.

## Inputs

- `project`: Project name.
- `environment`: Environment (e.g., dev, staging, prod).
- `app`: Application name.
- `owner`: Owner of the resource.
- `additional_tags`: Additional tags to be added to the resources.

## Outputs

- `tags`: A map of all the tags including mandatory and additional tags.

## Example Usage

```hcl
module "tags" {
  source = "git::https://github.com/carlosmonteiro/terraform-modules.git/tags"
  project      = "MyProject"
  app          = "MyApplication"
  environment  = "prod"
  owner        = "team@example.com"
  
  additional_tags = {
    Department = "IT"
    CostCenter = "12345"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags          = module.tags.tags
}
