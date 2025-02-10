terraform {
  required_version = ">=1.9.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.84.0" # Pin to a specific version
    }
  }
}

