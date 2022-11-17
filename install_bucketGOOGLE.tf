resource "google_storage_bucket" "bucket"{
    count = 1
    name = "terraform202211151"
    location      = "us-east4"
    storage_class = "REGIONAL"
}