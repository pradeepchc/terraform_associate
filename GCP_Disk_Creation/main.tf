resource "google_compute_disk" "default" {
  name  = "pradeep-disk1"
  type  = "pd-ssd"
  zone  = "europe-west1-c"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}
