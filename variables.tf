#
# 変数ファイル
# 
variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaaf2r4j3dygq56tj2p6p2rjmhuepbzed6ylovlg2klmf34xs7jdumq"
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