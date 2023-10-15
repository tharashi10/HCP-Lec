/*
 * 可用性ドメインのデータソースを取得
 * 可用性ドメイン: リージョン内に配置された1つ以上のデータセンターのこと
 * https://docs.oracle.com/ja-jp/iaas/Content/General/Concepts/regions.htm
 * サービスゲートウェイなどのリソース作成の際に、
 * 可用性ドメインが必要となるケースがあるためここで取得している
 */
data "oci_identity_availability_domains" "ads" {
  compartment_id = var.provider_tenancy_ocid
}

/*
 * 得られた可用性ドメインの結果確認
 */
output "all-ads" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}
