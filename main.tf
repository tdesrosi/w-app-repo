resource "google_project_iam_binding" "sample_iam_binding" {
  project = "w-appprod-0804"
  role    = "roles/viewer"

  members = [
    "user:user@example.com"
  ]
}
