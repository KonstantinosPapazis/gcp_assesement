resource "google_compute_router" "router" {
  name    = "my-router"
  region  = var.region
  network = module.vpc.network_self_link

  bgp {
    asn = 64514
  }
  depends_on = [module.vpc]
}

module "cloud-nat" {
  source     = "terraform-google-modules/cloud-nat/google"
  version    = "~> 1.2"
  project_id = var.project_id
  region     = var.region
  router     = google_compute_router.router.name

  #nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetworks = [
    {
      name                     = module.vpc.subnets_names[0]
      source_ip_ranges_to_nat  = ["ALL_IP_RANGES"]
      secondary_ip_range_names = null
    }
  ]
}