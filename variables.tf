variable "bastion_pip_name" {
  type        = string
  description = "description"
  default     = "type"
}

variable "location" {
  type        = string
  description = "The Azure region where the new Bastion Host will be created. Defaults to UK South."
  default     = "uksouth"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Groups where the new Bastion Host will be created."
}


variable "tags" {
  type        = map
  description = "description"
  default     = {}
}

variable "bastion_name" {
  type        = string
  description = "The name to assign to the new Bastion host being deployed."
  default     = "AzureBastion"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the Bastion should be deployed."
}

variable "availabililty_zone" {
  type        = string
  description = "The availability zone to allocate to the public IP of the new Bastion service."
  default     = "No-Zone"
  validation {
    condition     = var.landing_zones == "No-Zone" || var.landing_zones == "Zone-Redundant" || var.landing_zones == 1 || var.landing_zones == 2 || var.landing_zones == 3
    error_message = "Must be set to either `No-Zone`, `Zone-Redundant`, 1, 2 or 3"
  }
}


