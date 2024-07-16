resource "google_storage_bucket" "default-bucket" {
  name          = "${var.project_id}-bucket-tfstate"
  project = "tf-udemy-project-training"
  location      = "EU"
  force_destroy = falsee
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }
}

terraform {
  backend "gcs" {
    bucket = "tf-udemy-project-training-bucket-tfstate"
    prefix = "terraform-state"
  }
}