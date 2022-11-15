# FAILURE TEST SCENARIO

# resource "google_project_iam_binding" "orgSecurityPolicy" {
#   project = "w-app-targetapp-prod-0805"
#   role    = "roles/compute.orgSecurityPolicyAdmin"

#   members = [
#     "user:lyka@lykasegura.joonix.net"
#   ]
# }

# resource "google_project_iam_binding" "editorRole" {
#   project = "w-app-targetapp-prod-0805"
#   role    = "roles/editor"

#   members = [
#     "user:lyka@lykasegura.joonix.net"
#   ]
# }

# resource "google_project_iam_binding" "bqAdmin" {
#   project = "w-app-targetapp-prod-0805"
#   role    = "roles/storage.admin"

#   members = [
#     "user:lyka@lykasegura.joonix.net"
#   ]
# }

# resource "google_project_iam_binding" "storageAdmin" {
#   project = "w-app-targetapp-prod-0805"
#   role    = "roles/storage.admin"

#   members = [
#     "user:lyka@lykasegura.joonix.net"
#   ]
# }


# resource "google_project_iam_binding" "projectIAMAdmin" {
#   project = "w-secteam-target-prod"
#   role    = "roles/resourcemanager.projectIamAdminn"

#   members = [
#     "user:thomas@arborist.joonix.net"
#   ]
# }

# SUCCESS SCENARIO

resource "google_storage_bucket" "test-storage-bucket" {
  project       = "w-secteam-target-prod"
  name          = "w-secteam-target-prod"
  location      = "US"
  force_destroy = true
}

resource "google_project_iam_member" "storageAdminSABinding" {
  project = "w-secteam-target-prod"
  role    = "roles/owner"
  member  = "serviceAccount:dev-env@w-secteam-app-pipeline.iam.gserviceaccount.com"
  # member = "user:tdesros@google.com"
}

resource "google_project_iam_custom_role" "my-custom-role" {
  project     = "w-secteam-target-prod"
  role_id     = "myCustomRole"
  title       = "My Custom Role"
  description = "A description"
  permissions = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
}
