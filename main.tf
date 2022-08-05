terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.84"
    }
  }
}

resource "google_project_iam_binding" "sample_iam_binding" {
  project = "w-appdev-0804"
  role    = "roles/viewer"

  members = [
    "user:user@example.com"
  ]
}
