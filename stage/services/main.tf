terraform {
  required_version = ">= 1.4.0"
}

# Instance PrincipalでAPI実行する
provider "oci" {
  auth = "InstancePrincipal"
}

module "webserver_cluster" {
  source = "../../modules/services/simple"

  project_prefix = "Sample"
  provider_tenancy_ocid = "ocid1.compartment.oc1..aaaaaaaaf2r4j3dygq56tj2p6p2rjmhuepbzed6ylovlg2klmf34xs7jdumq"
  create_compartment_name = "comp-terraform01"
  create_compartment_description = "即削除するサンプル環境"
  vcn_cidr_block = "10.51.0.0/16"
  vcn_display_name = "VCN_from_Stage"
  vcn_dns_label = "VCN_from_Stage"

  sl_egress_destination_prv = "0.0.0.0/0"
  sl_egress_protocol_prv = "6"

  sl_ingress_source_prv = "10.0.0.0/16"
  sl_ingress_protocol_prv = "6"
  sl_ingress_tcp_dest_port_max_prv = "80"

  sl_ingress_tcp_dest_port_min_prv = "22"
  sl_display_name_prv = "dev_seclist_prv_from_Stage"
}