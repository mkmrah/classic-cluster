
##############################################################################
# Create Cluster
##############################################################################




resource "ibm_container_cluster" "classic_cluster" {
  resource_group_id = "${data.ibm_resource_group.resource_group.id}"
  name            = var.cluster_name
  datacenter      = var.zones
  machine_type    = var.machine_type
  hardware        = var.hardware
  default_pool_size = 1
}

#############################################################################

