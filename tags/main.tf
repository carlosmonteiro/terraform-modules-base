locals {
  required_tags = {
    Project     = var.project
    Environment = var.environment
    Owner       = var.owner
    CostCenter  = var.cost_center
  }

  all_tags = merge(local.required_tags, var.additional_tags)
}

output "tags" {
  value = local.all_tags
}
