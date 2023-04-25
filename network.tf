resource "oci_core_vcn" "dev_vcn" {
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}

# VCN
variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaatyksv4n5nww3nm3jjc6mcfw6fqlsuafj7h63nqn22zkqlochrava"
}
variable "vcn_cidr_block" {
  default = "10.51.0.0/16"
}
variable "vcn_display_name" {
  default = "devVCN"
}
variable "vcn_dns_label" {
  default = "devVCN"
}