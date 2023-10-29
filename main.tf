module "compute" {
   source = "modules/instance"
   availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
   compartment_id = var.compartment_id
   shape = var.shape
   source_ocid = var.source_ocid
   subnet_ocid = network.vcn_id
   compute_ssh_authorized_keys = compute_ssh_authorized_keys
}

module "network" {
  source = "modules/network"
}