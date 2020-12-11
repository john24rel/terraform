resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata_startup_script = "${file("userdata.sh")}"

  metadata = {
    ssh-keys = "debian:${file("~/.ssh/id_rsa.pub")}sam:${file("~/.ssh/id_rsa.pub")}"
  }
}
