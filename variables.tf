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
variable "sl_egress_destination_prv" {
  default = "0.0.0.0/0"
}
variable "sl_egress_protocol_prv" {
  default = "6"
}
variable "sl_ingress_source_prv" {
  default = "10.0.0.0/16"
}
variable "sl_ingress_protocol_prv" {
  default = "6"
}
variable "sl_ingress_tcp_dest_port_max_prv" {
  default = "22"
}
variable "sl_ingress_tcp_dest_port_min_prv" {
  default = "22"
}
variable "sl_display_name_prv" {
  default = "dev_seclist_prv"
}

variable "list_sample" {
  description = "Terraformのシンプルなリスト形式"
  type = list
  default = ["Hoo","Bar","Hoge"]
}

output "sample_list_output" {
  description = "an example of a list in terraform"
  value = var.list_sample
}