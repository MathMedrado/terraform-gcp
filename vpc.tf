resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
}

resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.vpc_network.name
  description = "Creates firewall rule targeting tagged instances"


  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
  source_tags = ["web-source"]
  target_tags = ["web"]
}

resource "google_compute_firewall" "ssh-access" {
  name    = "ssh-firewall"
  network = google_compute_network.vpc_network.name
  description = "Creates firewall rule targeting tagged instances for ssh access"


  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  source_tags = ["web-source"]
  target_tags = ["web"]
}