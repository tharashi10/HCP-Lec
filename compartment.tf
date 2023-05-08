resource "oci_identity_compartment" "default" {
  compartment_id = var.provider_tenancy_ocid
  name = var.creat_compartment_name
  description = var.creat_compartment_description
}