terraform {
  backend "remote" {
    organization = "pradeep-terraform-cloud"
    workspaces {
      name = "terraform_associate"
    }
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.11.0"
    }
  }
}

resource "google_compute_network" "this" {
    auto_create_subnetworks = false
    name = "demo"
    routing_mode = "REGIONAL"
}

resource "google_compute_subnetwork" "this" {
    name = "demo-subnet"
    ip_cidr_range = "192.168.24.0/24"
    region = "europe-west1"
    network = google_compute_network.this.id
}