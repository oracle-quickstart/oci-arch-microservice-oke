## Copyright © 2020, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "ssh_public_key" {}
variable "ssh_private_key" {}


# Specify any Default Value's here

variable "instance_shape" {
  description = "Instance Shape"
  default     = "VM.Standard2.1"
}
variable "availability_domain" {
  default="3"
}

variable "instance_user" {
  default="opc"
}
variable "instance_os" {
  description = "Operating system for compute instances"
  default     = "Oracle Linux"
}
variable "linux_os_version" {
  description = "Operating system version for all Linux instances"
  default     = "7.7"
}