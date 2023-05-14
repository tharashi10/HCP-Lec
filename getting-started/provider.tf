#
# Provider ファイル
#
terraform {
  required_version = ">= 1.4.0"
}

# Instance PrincipalでAPI実行する
provider "oci" {
  auth = "InstancePrincipal"
}

# Not necessary for using instance principal in Cloud Shell.
# provider "oci" {
#   tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaamu4bvfwi2pkyutoags7ws3t6jnfrbfwgcwiwzqziuwuikunj772q"
#   user_ocid        = "ocid1.user.oc1..aaaaaaaaxv3cp6tqepzq66japmdmnobgh5jlrixahkgagwpiz322jvvu5rqq"
#   private_key_path = ""
#   fingerprint      = ""
#   region           = "ap-tokyo-1"
# }
