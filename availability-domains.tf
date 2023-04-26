data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_ocid
}

output "all-ads" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}
