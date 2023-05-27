resource "oci_identity_user" "sample_user" {
  compartmentid = oci_identity_compartment.default.id
  description   = "oci sample user"
  name          = var.user_names[count.index]
  count         = length(var.user_names)
  tag           = { "Owner" = "TeamXYZ", "ManagedBy" = "Terraform" }
}

resource "oci_identity_user" "sample_users_for_each" {
  for_each = toset(var.user_names) // set or map
  name     = each.value
}

output "all_users" {
  value = oci_identity_user.sample_users_for_each
}

output "all_users_ids" {
  value = values(oci_identity_user.sample_users_for_each)[*].id
}

output "all_users_ids" {
  value = values(oci_identity_user.sample_users_for_each)[*].id
}
