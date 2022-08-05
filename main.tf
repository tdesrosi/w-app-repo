# FAILURE TEST SCENARIO

resource "google_project_iam_binding" "sample_iam_binding" {
#   project = "w-app-targetapp-dev-0805"
  role    = "roles/compute.orgSecurityPolicyAdmin"

  members = [
    "user:user@example.com"
  ]
}

# ## SUCCESS SCENARIO

# resource "google_storage_bucket" "test-storage-bucket" {
#   name          = "w-test-storage-0909"
#   location      = "US"
#   force_destroy = true
# }
