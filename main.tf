resource "google_project_iam_binding" "sample_iam_binding" {
  project = "w-app-targetapp-prod-0805"
  role    = "roles/compute.instances.setIamPolicy"

  members = [
    "user:user@example.com"
  ]
}

