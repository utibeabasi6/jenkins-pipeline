terraform {
  backend "gcs" {
    bucket = "tf-state-ferrum"
    prefix = "terraform/state"
  }
}