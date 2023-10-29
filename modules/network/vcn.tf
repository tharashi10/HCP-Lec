resource "oci_core_vcn" "default" {
  display_name   = "${var.project_prefix}-VCN01"
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_id
  dns_label      = var.vcn_dns_label
}

resource "oci_core_security_list" "default" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.default.id
  display_name   = "${var.project_prefix}-PRV-SL01"
  egress_security_rules {
    destination = var.sl_egress_destination_prv
    protocol    = var.sl_egress_protocol_prv
    stateless   = false
  }
  ingress_security_rules {
    source    = var.sl_ingress_source_prv
    protocol  = var.sl_ingress_protocol_prv
    stateless = false
    tcp_options {
      max = var.sl_ingress_tcp_dest_port_max_prv
      min = var.sl_ingress_tcp_dest_port_min_prv
    }
  }
}

resource "oci_core_subnet" "private_subnet01" {
  cidr_block                 = var.subnet_cidr_block
  compartment_id             = var.compartment_id
  vcn_id                     = oci_core_vcn.default.id
  display_name               = "${var.project_prefix}-PRV-SUBNET01"
  prohibit_public_ip_on_vnic = true
  security_list_ids          = [oci_core_security_list.default.id]
  route_table_id             = oci_core_route_table.default.id
  dns_label                  = var.prv_subnet_dns_label
}


/*
 * Service Gatewayの作成
 * 今回は作成しないためコメントアウト

data "oci_core_services" "default" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}

resource "oci_core_service_gateway" "default" {
  display_name = "${var.project_prefix}-SGW"
  compartment_id = oci_identity_compartment.default.id
  vcn_id = oci_core_vcn.default.id

  services {
    service_id = data.oci_core_services.default.services[0]["id"]
  }
}
*/


resource "oci_core_route_table" "default" {
  display_name   = "${var.project_prefix}-RT01"
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.default.id
}
#  route_rules {
#    destination       = data.oci_core_services.default.services[0]["cidr_block"]
#    destination_type  = "SERVICE_CIDR_BLOCK"
#    network_entity_id = oci_core_service_gateway.default.id
#  }
#}

/* 
 * 状態ファイル(tfstate)をリモートで管理する場合の方式
 * HTTP バックエンド構成
 * S3互換バックエンド構成
 */

# [HTTP バックエンド構成]
# terraform {
#   backend "http" {
#    address = "https://objectstorage.ap-tokyo-1.oraclecloud.com/p/CcoyKZCIdw9RlYckfsquFAZvMG37Wj_-BiwdFT0fdPAaiodH-rL_oQWFmpbV3zqO/n/nrp0revoo1zt/b/bucket-tfstate/o/terraform.tfstate"
#    update_method = "PUT"
#   }
# }

# [S3互換バックエンド構成]
#terraform {
#  backend "s3" {
#    bucket = "terraform-states"
#    key = "./terraform.tfstate"
#    region = "ap-tokyo-1"
#    endpoint = "https://nrp0revoo1zt.compat.objectstorage.ap-tokyo-1.oraclecloud.com"
#    shared_credentials_file     = "./terraform_bucket_credentials"
#    skip_region_validation      = true
#    skip_credentials_validation = true
#    skip_metadata_api_check     = true
#    force_path_style            = true
#  }   
#}
