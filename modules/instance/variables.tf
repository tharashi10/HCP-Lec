variable "availability_domain"{}
variable "compartment_id" {}
variable "shape" {
    default = "VM.Standard.E2.1.Micro"
}
variable "source_ocid" {
    default = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaub2gikosfetvtrgwa6cqwhtt25ukkiaogbpsfiyiayus6puifm3q"
}
variable "subnet_ocid" {}
variable "compute_ssh_authorized_keys" {}
