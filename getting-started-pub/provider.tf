/*
 * Terraformのバージョンを指定
 * Terraform v1.4.6 (2023/05.時点) CloudShellに含まれているTerraform Version
 */
terraform {
  required_version = ">= 1.4.0"
}

/*
 * プロバイダを指定
 * Terraform initを実行する際に、どのプロバイダのAPIとするのかを指定している
 * 本Terraformファイルでは「インスタンス・プリンシパル認可」の方式でAPIをコールしている
 */
provider "oci" {
  auth = "InstancePrincipal"
}

/* 
 * デフォルトの場合、以下のような「API Key認証」でAPIをコールする
 *
provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaanfrbf___ziuwuikunj772q"
  user_ocid        = "ocid1.user.oc1..aaaaaaaax____6jhkga322jvvu5rqq"
  private_key_path = ""
  fingerprint      = ""
  region           = "ap-tokyo-1"
}
*/
