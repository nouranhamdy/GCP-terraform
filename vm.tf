resource "google_compute_instance" "control-plane" {
  name         = "vm-01"
  machine_type = "e2-medium"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.public-subnetwork.id
  }

  service_account {
    email  = google_service_account.gke-serviceAccount.email
    scopes = ["cloud-platform"]
  }

}