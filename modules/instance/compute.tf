resource "oci_core_instance" "compute" {
  for_each     = toset(["aps01"])
  display_name = each.value

  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  shape               = var.compute_shape
  source_details {
    source_id   = var.compute_image_id
    source_type = "image"
  }
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.public_subnet01.id
  }
  metadata = {
    ssh_authorized_keys = var.compute_ssh_authorized_keys
  }
  preserve_boot_volume = false
}