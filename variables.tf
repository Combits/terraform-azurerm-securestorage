variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  description = "The Resource Location"
}

variable "storage_account_name" {
  type        = string
  description = "The Storage Account Name"
}

variable "environment" {
  type        = string
  description = "The environment either Prod or Dev"
}

variable "project" {
  type    = string
  default = "TDB"
}

variable "owner" {
  type    = string
  default = "Terraform Test"
}