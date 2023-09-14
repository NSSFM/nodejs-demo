variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "NSSFMsRG"
  description = "rg Name"
}

variable "node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
  default     = 1
}

variable "msi_id" {
  type        = string
  description = "The Managed Service Identity ID. If required."
  default     = null
}

variable "username" {
  type        = string
  description = "The admin username for the new cluster."
  default     = "NSSFM"
}
