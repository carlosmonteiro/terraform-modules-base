locals {
  required_tags = {
    Project     = var.project
    Environment = var.environment
    App         = var.app
    Owner       = var.owner
    
  }

  all_tags = merge(local.required_tags, var.additional_tags)
}

output "tags" {
  value = local.all_tags
}
