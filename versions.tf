terraform {
  required_version = ">=1.9.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.84.0" # Pin to a specific version
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.1" # Use the latest stable version
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.1" # Use the latest stable version
    }

  }
}