resource "google_project_iam_binding" "sample_iam_binding" {
  project = "w-appdev-0804"
  role    = "roles/viewer"

  members = [
    "user:test@test.com"
  ]
}
