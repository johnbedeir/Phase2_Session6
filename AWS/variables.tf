# Sets the AWS region where the VM will be created.
variable "region" {
  description = "AWS region for the VM."
  type        = string
  default     = "us-east-1"
}

# Sets the Ubuntu machine image used to create the VM.
variable "ami_id" {
  description = "Ubuntu 24.04 AMI ID for the selected AWS region."
  type        = string
  default     = "ami-08b275ac6cc5dbefb"
}

variable "instance_type" {
  description = "Instance type for the VM."
  type        = string
  default     = "t3.micro"
}

variable "tag_name" {
  description = "Tag name for the VM."
  type        = string
  default     = "session6-vm"
}

variable "instance_count" {
  description = "Number of instances to create."
  type        = number
  default     = 2
}
