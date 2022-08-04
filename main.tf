resource "google_storage_bucket" "tb" {
  name          = "testbucket-0804-appdev"
  location      = "US"
  force_destroy = true
}
