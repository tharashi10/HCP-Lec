data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_ocid
}

data "oci_core_services" "dev_services" {
  filter {
    name = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex = true
  }
}

output "sample_services" {
  value = data.oci_core_services.dev_services.services
}

output "all-ads" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}
