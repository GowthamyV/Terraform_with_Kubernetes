provider "google" {
  project = "gowthamyv"
  region  = "us-central1"
}
terraform {
  backend "gcs" {
    bucket = "gowthamy"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
