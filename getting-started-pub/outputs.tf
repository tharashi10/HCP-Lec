/*
 * パラメータ出力ファイル
 * ここでは配列文法のお試しコードを記載
 */
variable "list_sample" {
  description = "Terraformのシンプルなリスト形式"
  type        = list(any)
  default     = ["Hoge", "Foo", "Bar"]
}

output "sample_list_output" {
  description = "作成したリストを表示"
  value       = var.list_sample
}

output "sample_users_output_upper" {
  value = [for name in var.user_names : upper(name)]
}
