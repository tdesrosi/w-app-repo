# FAILURE TEST SCENARIO

resource "google_project_iam_binding" "sample_iam_binding" {
#   project = "w-app-targetapp-dev-0805"
  project = "w-targetapp-dev-0805"
  role    = "roles/compute.orgSecurityPolicyAdmin"

  members = [
    "user:lyka@lykasegura.joonix.net"
  ]
}

# SUCCESS SCENARIO

# resource "google_storage_bucket" "test-storage-bucket" {
# 	project = "w-app-targetapp-dev-0805"
#   name          = "w-test-storage-0909"
#   location      = "US"
#   force_destroy = true
# }
