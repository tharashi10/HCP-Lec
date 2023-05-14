# 共通管理の変数
variable "project_prefix" {
  description = "プロジェクトの接頭辞"
  type        = string
}

# Compartment用の変数[TODO]
variable "provider_tenancy_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaaf2r4j3dygq56tj2p6p2rjmhuepbzed6ylovlg2klmf34xs7jdumq"
}

variable "create_compartment_name" {
  description = "コンパートメントの名前"
  type        = string
}

variable "create_compartment_description" {
  description = "コンパートメントの説明"
  type        = string
}

# VCN用の変数
variable "vcn_cidr_block" {
  description = "VCNのCIDRブロック"
  type        = string
}

variable "vcn_display_name" {
  description = "VCNの表示名"
  type        = string
}

variable "vcn_dns_label" {
  description = "VCNのDNSラベル"
  type        = string
}

# セキュリティリスト用の変数
variable "sl_egress_destination_prv" {
  description = "エグレスルール"
  type        = string
}

variable "sl_egress_protocol_prv" {
  default = "6"
}

variable "sl_ingress_source_prv" {
  description = "イングレスルール"
  type        = string
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
  description = "サブネットの表示名"
  type        = string
}
