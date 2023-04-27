#
# VCN 構成ファイル
# 
resource "oci_core_vcn" "dev_vcn" {
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}
