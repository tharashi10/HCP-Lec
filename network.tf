#
# VCN 構成ファイル
# 
resource "oci_core_vcn" "dev_vcn" {
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}

resource "oci_core_security_list" "dev_security_list_prv" {
  compartment_id = var.compartment_ocid
  egress_security_rules {
    destination = var.sl_egress_destination_prv
    protocol    = var.sl_egress_protocol_prv
    stateless   = false
  }
  ingress_security_rules {
    source     = var.sl_ingress_source_prv     
    protocol   = var.sl_ingress_protocol_prv
    stateless  = false
    tcp_options {
      max = var.sl_ingress_tcp_dest_port_max_prv
      min = var.sl_ingress_tcp_dest_port_min_prv
    }
  }
  vcn_id       = oci_core_vcn.dev_vcn.id
  display_name = var.sl_display_name_prv
}