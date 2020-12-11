resource "google_compute_network" "vpc" {
  name                    = "${var.vpc_name}"
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}

resource "google_compute_subnetwork" "public_subnet_1" {
  name          = "${var.public-subnet1-name}"
  ip_cidr_range = "${var.ip_cidr_range1}"
  network       = "${google_compute_network.vpc.name}"
}

resource "google_compute_subnetwork" "public_subnet_2" {
  name          = "${var.public-subnet2-name}"
  ip_cidr_range = "${var.ip_cidr_range2}"
  network       = "${google_compute_network.vpc.name}"
}

resource "google_compute_subnetwork" "public_subnet_3" {
  name          = "${var.public-subnet3-name}"
  ip_cidr_range = "${var.ip_cidr_range3}"
  network       = "${google_compute_network.vpc.name}"
}
