resource "google_compute_instance" "vm_instance" {
  name         = var.machine_name
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.machine_image
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
        #for the public ip
        #if you dont declare the ip the block will give a public ip anyway
    }
  }
      tags = ["web", "web-source"]
}
