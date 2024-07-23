variable "project" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (e.g., dev, staging, prod)"
  type        = string
}

variable "owner" {
  description = "Owner of the resource"
  type        = string
}

variable "cost_center" {
  description = "Cost center for billing purposes"
  type        = string
}

variable "additional_tags" {
  description = "Additional tags to be added to the resources"
  type        = map(string)
  default     = {}
}
