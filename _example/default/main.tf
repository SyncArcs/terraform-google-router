provider "google" {
  project = "soy-smile-435017-c5"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

####==============================================================================
#### vpc module call.
####==============================================================================
module "vpc" {
  source                                    = "git::https://github.com/SyncArcs/terraform-google-vpc.git?ref=master"
  name                                      = "dev"
  environment                               = "test"
  routing_mode                              = "REGIONAL"
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}

####==============================================================================
#### router module call.
####==============================================================================
module "cloud_router" {
  source      = "../../"
  name        = "dev"
  environment = "test"
  region      = "asia-northeast1"
  network     = module.vpc.vpc_id
  bgp = {
    asn = "65001"
  }
}