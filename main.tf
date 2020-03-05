## Copyright © 2020, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

module "vcn" {
  source = "./modules/vcn"
  tenancy_ocid      = var.tenancy_ocid
  compartment_ocid  = var.compartment_ocid
}

module "k8s" {
  source              = "./modules/k8s"
  tenancy_ocid        = var.tenancy_ocid
  compartment_ocid    = var.compartment_ocid
  vcn                 = module.vcn.vcn_id
  clustersub1_id      = module.vcn.subnet2_ocid
  nodesub1_id         = module.vcn.subnet1_ocid
  ssh_public_key      = var.ssh_public_key
  availability_domain = var.availability_domain
} 
