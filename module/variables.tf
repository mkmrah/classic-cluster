##############################################################################
# Sensitive Account Variables
##############################################################################


variable resource_group {
    description = "Name of resource group to provision resources"
}

variable ibm_region {
    description = "IBM Cloud region where all resources will be deployed"
    default     = "us-south"
}

##############################################################################



##############################################################################
# Network Variables
##############################################################################


variable zones {
  description = "List of cluster zones The first will be for the master, any additional will be for worker pools"
  default     = "dal13"

}

##############################################################################


##############################################################################
# Cluster Variables
##############################################################################

variable cluster_name {
  description = "Name of openshift cluster to be created"
  default     = "classic-cluster"
}

variable kube_version {
  description = "Kube version to use for the cluster. use `ibmcloud ks versions` to see a list of available versions"
  default     = "1.20.11"
}

variable default_pool_size {
  description = "Default pool size for cluster"
  default     = 1  
}

variable hardware {
  description = "Hardware type for cluster, shared or dedicated"
  default     = "shared"
}

variable machine_type {
  description = "hardware type for cluster"
  default     = "b2c.4x16"
}

variable private_only {
  description = "Provision cluster workers on private only"
  default     = false
}
