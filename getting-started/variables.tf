#[共通] プロジェクト共通の変数
variable "project_prefix" {
  default = "SampleIaC"
}

#[プロバイダ] 今回作成するコンパートメントの親コンパートメントを指定
variable "provider_tenancy_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaaf2r4j3dygq56tj2p6p2rjmhuepbzed6ylovlg2klmf34xs7jdumq"
}

#[コンパートメント]
variable "create_compartment_name" {
  default = "comp-terraform01"
}
variable "create_compartment_description" {
  default = "Terraform用サンプル環境[即削除]"
}

#[仮想クラウドネットワーク]
variable "vcn_cidr_block" {
  default = "10.0.0.0/16"
}
variable "vcn_display_name" {
  default = "VCN01-HogeHoge" #Overrideされる
}
variable "vcn_dns_label" {
  default = "VCN01"
}

#[セキュリティリスト] エグレスルール
variable "sl_egress_destination_prv" {
  default = "0.0.0.0/0"
}
variable "sl_egress_protocol_prv" {
  default = "6"
}

#[セキュリティリスト] イングレスルール
variable "sl_ingress_source_prv" {
  default = "10.0.0.0/16"
}
variable "sl_ingress_protocol_prv" {
  default = "6"
}
variable "sl_ingress_tcp_dest_port_max_prv" {
  default = "80"
}
variable "sl_ingress_tcp_dest_port_min_prv" {
  default = "22"
}
variable "sl_display_name_prv" {
  default = "seclist_prv_Hogehoge" #Overrideされる
}
