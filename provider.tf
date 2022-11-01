provider "google" {
  project = var.project_id
}

provider "google-beta" {
  project = var.project_id
}

terraform {
  backend "gcs" {
    bucket = "tf-bucket-${var.project_id}"
    prefix = "terraform/state"
  }
}