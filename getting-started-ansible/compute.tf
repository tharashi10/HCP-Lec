/*
 * OCI 仮想マシンの作成
 * 表示名は「SampleIac-Compute01」として作成される
 */
resource "oci_core_instance" "compute" {
  for_each     = toset(["aps01", "aps02"])
  display_name = each.value

  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = oci_identity_compartment.default.id
  shape               = var.compute_shape
  shape_config {
    ocpus         = 2
    memory_in_gbs = 32
  }
  source_details {
    source_id   = var.compute_image_id
    source_type = "image"
  }

  create_vnic_details {
    assign_public_ip = false
    subnet_id        = oci_core_subnet.private_subnet01.id
  }
  metadata = {
    ssh_authorized_keys = file(var.compute_ssh_authorized_keys)
  }
  preserve_boot_volume = false
}

resource "oci_core_instance" "bastion" {
  display_name        = "bas01"
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = oci_identity_compartment.default.id
  shape               = var.compute_shape
  shape_config {
    ocpus         = 1
    memory_in_gbs = 6
  }
  source_details {
    source_id   = var.compute_image_id
    source_type = "image"
  }
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.public_subnet01.id
  }
  metadata = {
    ssh_authorized_keys = file(var.compute_ssh_authorized_keys)
  }
  preserve_boot_volume = false
}
