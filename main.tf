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
  project = "w-targetapp-prod-0805"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}
