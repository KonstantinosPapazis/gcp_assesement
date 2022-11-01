resource "google_compute_forwarding_rule" "default" {
  provider              = google-beta
  project               = var.project_id
  name                  = "tcp-loadbalancer"
  target                = google_compute_target_pool.default.self_link
  load_balancing_scheme = "EXTERNAL"
  port_range            = 80
  region                = var.region
  ip_protocol           = "TCP" 

  depends_on = [
    google_compute_target_pool.default
  ]
}

resource "google_compute_target_pool" "default" {
  name = "vm-pool"
  region                = var.region

  instances = [
    google_compute_instance.vm1.self_link
  ]

  depends_on = [
    google_compute_instance.vm1
  ]
}

output "external_ip" {
  description = "The external ip address of the load balancer."
  value       = google_compute_forwarding_rule.default.ip_address
}