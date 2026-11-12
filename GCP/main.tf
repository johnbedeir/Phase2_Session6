# Creates one small Ubuntu Compute Engine virtual machine.
resource "google_compute_instance" "vm" {
  name         = "session6-vm"
  machine_type = "e2-micro"
  zone         = var.zone

  # Creates the VM boot disk from an Ubuntu image.
  boot_disk {
    initialize_params {
      # Find images in Compute Engine > Images.
      image = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"
    }
  }

  # Connects the VM to the default network with an external IP.
  network_interface {
    network = "default"

    access_config {}
  }
}
