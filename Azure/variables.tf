# Sets the Azure region where the resources will be created.
variable "location" {
  description = "Azure region for the VM."
  type        = string
  default     = "East US"
}
