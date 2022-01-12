terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file(var.credencial_file)

  project = var.project_id
  region  = var.region
  zone    = "${var.region}-c"
}
