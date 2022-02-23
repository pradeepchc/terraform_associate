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

provider "google" {
  project = "sct-management-console"
}

resource "google_compute_disk" "default" {
  name  = "pradeep-disk1"
  type  = "pd-ssd"
  zone  = "europe-west1-c"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}
