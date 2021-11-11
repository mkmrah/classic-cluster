
##############################################################################
# Create Cluster
##############################################################################

resource ibm_container_cluster classic_cluster {

    name              = "${var.cluster_name}"
    resource_group_id = "${data.ibm_resource_group.resource_group.id}"
    datacenter        = "${var.zones)}"
    machine_type      = "${var.machine_type}"
    kube_version      = "${var.kube_version}"
    hardware          = "${var.hardware}"
    default_pool_size = "${var.default_pool_size}"

}

#############################################################################

