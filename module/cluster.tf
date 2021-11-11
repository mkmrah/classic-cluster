
##############################################################################
# Create Cluster
##############################################################################

resource ibm_container_cluster classic_cluster {

    name              = "${var.cluster_name}"
    resource_group_id = "${data.ibm_resource_group.resource_group.id}"
    datacenter        = "${element(var.zones, 0)}"
    machine_type      = "${var.machine_type}"
    kube_version      = "${var.kube_version}"
    hardware          = "${var.hardware}"
    default_pool_size = "${var.default_pool_size}"

}

#############################################################################


#############################################################################
# Create multizone attachments for cluster
#############################################################################

resource ibm_container_worker_pool_zone_attachment multi_zone {
    count             = "${length(var.zones) - 1}"
    resource_group_id = "${data.ibm_resource_group.resource_group.id}"
    cluster           = "${ibm_container_cluster.classic_cluster.name}"
    worker_pool       = "${ibm_container_cluster.classic_cluster.worker_pools.0.id}"
    zone              = "${element(var.zones, count.index + 1)}"
}

#############################################################################
