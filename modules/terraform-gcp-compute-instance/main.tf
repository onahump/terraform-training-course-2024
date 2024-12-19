
resource "google_compute_network" "private_network" {
  name                    = var.private_network_name
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "allow_internal" {
  name    = var.firewall_rule_internal_name
  network = google_compute_network.private_network.id

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  source_ranges = [var.ip_cidr_range]
}

resource "google_compute_firewall" "allow_ssh" {
  name    = var.firewall_rule_ssh_name
  network = google_compute_network.private_network.id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = [var.ip_cidr_range] # Restrict SSH access to the bastion host
}

resource "google_compute_instance" "secure_vm" {
  name         = var.compute_instance_name
  machine_type = var.compute_machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image =  "projects/debian-cloud/global/images/family/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.private_network.id
  }
}