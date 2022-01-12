
resource "google_compute_instance" "dev" {
  name         = var.dev-server
  machine_type = var.machine-type
  zone         = var.gcp-zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external ip address
    }
  }

  // Apply the firewall rule to allow external IPs to access this instance
  tags = ["http-server"]
}

resource "google_compute_instance" "prod" {
  name         = var.prod-server
  machine_type = var.machine-type
  zone         = var.gcp-zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external ip address
    }
  }

  // Apply the firewall rule to allow external IPs to access this instance
  tags = ["http-server"]
}

resource "google_compute_firewall" "http-server" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}

