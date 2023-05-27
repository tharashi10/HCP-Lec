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
  default = "22"
}
variable "sl_ingress_tcp_dest_port_min_prv" {
  default = "22"
}

#[サブネット]
variable "subnet_cidr_block" {
  default = "10.0.0.0/24"
}
variable "prv_subnet_dns_label" {
  default = "prvsub01"
}


#[Compute]
variable "compute_shape" {
  default = "VM.Standard.E2.1.Micro"
}
variable "compute_image_id" {
  default = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaub2gikosfetvtrgwa6cqwhtt25ukkiaogbpsfiyiayus6puifm3q"
}
variable "compute_ssh_authorized_keys" {
  default = ".key/compute01.pub"
}


#[OCI IAM]
variable "user_names" {
  description = "OCI IAM Userサンプル"
  type        = list(string)
  default     = ["Bar", "Foo", "Hoge"]
}

variable "custom_tags" {
  default = { "Owner" = "TeamXYZ", "ManagedBy" = "Terraform" }
}
