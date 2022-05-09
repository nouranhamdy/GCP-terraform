resource "google_service_account" "gke-serviceAccount" {
  account_id   = "cluster-admin"
  display_name = "final-k8s-admin"
}
resource "google_project_iam_member" "gke-serviceAccount-binding" {
  project = "nouran-gcp-348610"
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.gke-serviceAccount.email}"
}

# second service account & bindings
resource "google_service_account" "node-serviceAccount" {
  account_id   = "node-acc"
  display_name = "node-acc"
}
resource "google_project_iam_member" "node-serviceAccount-binding" {
  project = "nouran-gcp-348610"
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.node-serviceAccount.email}"
}