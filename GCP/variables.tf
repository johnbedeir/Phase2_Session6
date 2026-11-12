# Sets the Google Cloud project where the VM will be created.
variable "project_id" {
  description = "Google Cloud project ID."
  type        = string
}

# Sets the Google Cloud region.
variable "region" {
  description = "Google Cloud region."
  type        = string
  default     = "us-central1"
}

# Sets the Google Cloud zone where the VM will run.
variable "zone" {
  description = "Google Cloud zone."
  type        = string
  default     = "us-central1-a"
}
