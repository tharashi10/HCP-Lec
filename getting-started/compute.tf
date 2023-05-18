/*
 * OCI 仮想マシンの作成
 * 表示名は「SampleIac-Compute01」として作成される
 */
resource "oci_core_instance" "compute01" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = oci_identity_compartment.default.id
  shape               = var.compute_shape
  source_details {
    source_id   = var.compute_image_id
    source_type = "image"
  }

  display_name = "${var.project_prefix}-Compute01"
  create_vnic_details {
    assign_public_ip = false
    subnet_id        = oci_core_subnet.private_subnet01.id
  }
  metadata = {
    ssh_authorized_keys = file(var.compute_ssh_authorized_keys)
  }
  preserve_boot_volume = false
}
