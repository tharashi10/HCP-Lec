/*
 * コンパートメントの作成
 * 当該コンパートメントに、getting-started配下のtfファイルで指定したリソースが作成される
 * コンパートメント名などのパラメータは変数ファイル(variables.tf)を参照する
 */
resource "oci_identity_compartment" "default" {
  compartment_id = var.provider_tenancy_ocid
  name           = var.create_compartment_name
  description    = var.create_compartment_description
}
