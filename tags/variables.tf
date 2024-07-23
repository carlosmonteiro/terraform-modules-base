variable "project" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

variable "owner" {
  description = "Owner of the resource"
  type        = string
}

variable "app" {
  description = "Application name"
  type        = string
}

variable "additional_tags" {
  description = "Additional tags to be added to the resources"
  type        = map(string)
  default     = {}
}
