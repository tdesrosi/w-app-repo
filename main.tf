# FAILURE TEST SCENARIO

resource "google_project_iam_binding" "orgSecurityPolicy" {
  project = "w-app-targetapp-prod-0805"
  role    = "roles/compute.orgSecurityPolicyAdmin"

  members = [
    "user:lyka@lykasegura.joonix.net"
  ]
}

resource "google_project_iam_binding" "editorRole" {
  project = "w-app-targetapp-prod-0805"
  role    = "roles/editor"

  members = [
    "user:lyka@lykasegura.joonix.net"
  ]
}

resource "google_project_iam_binding" "bqAdmin" {
  project = "w-app-targetapp-prod-0805"
  role    = "roles/storage.admin"

  members = [
    "user:lyka@lykasegura.joonix.net"
  ]
}

resource "google_project_iam_binding" "storageAdmin" {
  project = "w-app-targetapp-prod-0805"
  role    = "roles/storage.admin"

  members = [
    "user:lyka@lykasegura.joonix.net"
  ]
}


resource "google_project_iam_binding" "projectIAMAdmin" {
  project = "w-app-targetapp-prod-0805"
  role    = "roles/resourcemanager.projectIamAdminn"

  members = [
    "user:lyka@lykasegura.joonix.net"
  ]
}

# SUCCESS SCENARIO

# resource "google_storage_bucket" "test-storage-bucket" {
#   project = "w-app-targetapp-prod-0805"
#   name          = "w-test-storage-prd-demo-0823"
#   location      = "US"
#   force_destroy = true
# }

# resource "google_project_iam_member" "storageAdminSABinding" {
#   project = "w-app-targetapp-prod-0805"
#   role    = "roles/storage.admin"
#   member  = "serviceAccount:demo-sa@w-app-targetapp-prod-0805.iam.gserviceaccount.com"
# }
