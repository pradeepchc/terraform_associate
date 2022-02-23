resource "google_service_account" "default" {
 account_id = "terraform-automation"
}

resource "google_compute_instance" "vm" {
  name         = "automation-vm"
  machine_type = "f1-micro"
  zone = "europe-west1-b"

  tags = ["foo", "bar"]


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  network_interface {
    network = "default"
    access_config {
      //ephemeral IP
    }
  }
}




