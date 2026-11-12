# Configures the Google Cloud project, region, and zone.
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
