variable "project_prefix" {}
variable "compartment_id" {}
variable "vcn_cidr_block" {}
variable "vcn_dns_label" {}
variable "sl_egress_destination_prv" {}
variable "sl_egress_protocol_prv" {}
variable "sl_ingress_source_prv" {}
variable "sl_ingress_protocol_prv" {}
variable "sl_ingress_tcp_dest_port_max_prv" {}
variable "sl_ingress_tcp_dest_port_min_prv" {}
variable "prv_subnet_dns_label" { default = "prvsub01" }
variable "subnet_cidr_block" {}
 