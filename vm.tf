resource "google_compute_instance" "vm1" {
  project      = var.project_id 
  zone         = var.zone
  name         = "instance-1"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = module.vpc.network_self_link 
    subnetwork = module.vpc.subnets_names[0] 
  }
  tags = ["health-check", "ssh"]
  metadata_startup_script = "sudo apt update; sudo apt install -y nginx;"
  depends_on = [module.vpc]
}
