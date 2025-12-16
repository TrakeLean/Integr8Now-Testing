variable "resource_group_name" {
  type        = string
  description = "Name for the Azure Resource Group used for ServiceNow testing."
}

variable "location" {
  type        = string
  description = "Azure region for the Resource Group."
  default     = "norwayeast"
}

variable "tags" {
  type        = map(string)
  description = "Optional tags to apply to the Resource Group."
  default     = {}
}
