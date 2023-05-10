variable "name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "resource_group" {
  description = "Name and location of the resource group"
  type = object({
    name     = string
    location = string
  })
}

variable "node_pools" {
  description = "Map of maps of `node_pools` to create"
  type        = any
  default     = []
}

variable "tags" {
  description = "List of maps of tags to add"
  type        = map(string)
  default     = {}
}