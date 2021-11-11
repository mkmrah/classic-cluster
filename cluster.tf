
##############################################################################
# Create Cluster
##############################################################################



resource "ibm_container_cluster" "classic_cluster" {
  name            = var.cluster_name
  datacenter      = var.zones
  machine_type    = var.machine_type
  hardware        = var.hardware
  default_pool_size = 1
}


#############################################################################
