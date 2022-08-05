# resource "google_project_iam_binding" "sample_iam_binding" {
#   project = "w-appprod-0804"
#   role    = "roles/viewer"

#   members = [
#     "user:user@example.com"
#   ]
# }

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  project = "w-appdev-0805"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "test-net"
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}

# resource "google_storage_bucket" "failbucket" {
#   project =  "w-appdev-0805"
#   name          = "aintworking-0805"
#   location      = "EU"
# }
