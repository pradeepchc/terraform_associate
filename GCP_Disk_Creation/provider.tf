terraform {

  backend "remote" {
    organization = "pradeep-terraform-cloud"
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
  credentials = "${file("sct-management-console-1f9aca06fe5c.json")}"
}