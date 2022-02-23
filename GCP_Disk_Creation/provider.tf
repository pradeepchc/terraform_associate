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