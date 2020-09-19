terraform {
  backend "gcs" {}
}

# Download any stable version in AWS provider of 2.36.0 or higher in 2.36 train
provider "google" {
  credentials = var.credentials
  project = var.project
  region  = var.region
}

module "enable_services" {
  source  = "../../modules/services"
  project = var.project
}

module "app_engine" {
  source  = "../../modules/app_engine"
  depends_on = [module.enable_services]
}
