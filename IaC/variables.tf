variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default = "NSSFMsRG-smooth-sloth"
}

variable "kubernetes_cluster_name" {
  default = "cluster-current-ladybird"
}

variable "kubernetes_cluster_dns_prefix" {
  default = "NSSFMsRG-smooth-sloth"
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
