resource "google_compute_firewall" "ssh" {
  name    = "test-firewall"
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
  }
  source_ranges = ["0.0.0.0/0"]

}