resource "google_compute_network" "vpc_network" {
  name = "vpc-01"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "public-subnetwork" {
  name          = "subnet-01"
  ip_cidr_range = "10.0.0.0/24"
  network       = google_compute_network.vpc_network.id
  }

  resource "google_compute_subnetwork" "private-subnetwork" {
  name          = "subnet-02"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.id
  }