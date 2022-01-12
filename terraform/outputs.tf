output "dev-ip" {
  value = google_compute_instance.dev.network_interface.0.access_config.0.nat_ip
}

output "prod-ip" {
  value = google_compute_instance.prod.network_interface.0.access_config.0.nat_ip
}
