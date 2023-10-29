variable "provider_tenancy_ocid" {default = "ocid1.tenancy.oc1..aaaaaaaamu4bvfwi2pkyutoags7ws3t6jnfrbfwgcwiwzqziuwuikunj772q"}
variable "project_prefix" {default = "SampleIaC"}
variable "compartment_id" {}
variable "vcn_cidr_block" {default = "10.0.0.0/16"}
variable "vcn_dns_label" {}
variable "sl_egress_destination_prv" {default = "0.0.0.0/0"}
variable "sl_egress_protocol_prv" {default = "6"}
variable "sl_ingress_source_prv" {default = "10.0.0.0/16"}
variable "sl_ingress_protocol_prv" {default = "6"}

variable "sl_ingress_tcp_dest_port_max_prv" {default = "22"}
variable "sl_ingress_tcp_dest_port_min_prv" {default = "22"}

variable "subnet_cidr_block" {default = "10.0.0.0/24"}
variable "prv_subnet_dns_label" {default = "prvsub01"}
variable "compute_ssh_authorized_keys" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC29dgLzzCKJAEbRF7zoleumAPRsj2hMZfjincgQvwjhKH8wpilKVAIOB+5ngJpFXKVUOEnWgY4xTMm3tvmgiaZNl9c9PzvS3PC73E6m5rqQRMDX9yBbtISBRevgvzw/HF/gec0sUvfHGomHvGC3LOs+BsmDTPkrRUXDd33GPsdTFOohHsXRDCpLvo9fnhR7H1HujMYYtmr6mMDV5fxTqUy39rUQSCXyx26i5mSsqmBbH4hd7KNph/4Iad418rJqnimxHOm+TmWfV+PV2TFSAN1CdiD7x1HmXOXgDXwHmTcWj6iO3I4WbbD/t2Mosg6yNCAYWQRBjwE1mb+5VvhyXIV clt1024101@0b8e0c7565fd"
}
