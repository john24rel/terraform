resource "google_compute_firewall" "allow-http" {
  name    = "${var.firewall_name}"
  network = "${google_compute_network.vpc.name}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags = ["http"]
}
