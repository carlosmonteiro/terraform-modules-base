# Tags Module

This module standardizes the tags for resources, ensuring that each resource has the four mandatory tags and allowing for additional custom tags.

## Inputs

- `project`: Project name.
- `environment`: Environment (e.g., dev, staging, prod).
- `owner`: Owner of the resource.
- `cost_center`: Cost center for billing purposes.
- `additional_tags`: Additional tags to be added to the resources.

## Outputs

- `tags`: A map of all the tags including mandatory and additional tags.

## Example Usage

```hcl
module "tags" {
  source = "git::https://github.com/your-username/terraform-modules.git//tags"
  project      = "MyProject"
  environment  = "prod"
  owner        = "team@example.com"
  cost_center  = "12345"
  additional_tags = {
    Department = "IT"
    App        = "MyApp"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags          = module.tags.tags
}
