# Availability Domainのデータソース取得[インスタンス作成要素]
data "oci_identity_availability_domains" "ads" {
  compartment_id = var.provider_tenancy_ocid
}

output "all-ads" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}
