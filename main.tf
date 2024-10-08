terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

data "google_service_account" "this" {
  account_id = var.project_name
}

data "google_compute_network" "network" {
  name = var.network
}

data "google_compute_subnetwork" "subnet" {
  name = var.subnet
}

data "google_compute_instance_template" "generic" {
  project     = var.project
  name        = "${var.name}-${var.deploy_version}"
  most_recent = true

  depends_on = [ google_compute_instance_template.this ]
}

data "google_compute_instance_group" "this" {
  name = var.name
}

data "google_compute_health_check" "health_check" {
  name = "${var.name}-healthcheck"
}
