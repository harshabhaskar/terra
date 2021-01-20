##### VM VARs ######

variable "VM_NAME" {
    default = "test-vm-terra"
}
variable "flavor_id" {
    default = "b843691e-7599-4ef4-809a-eae8733f5a47"
}
variable "image_id" {
    default = "0acf2de2-1f76-4adc-b2a0-4d5f1758ce99"
}
variable "key_pair" {
    default = "test"
}
variable "security_groups" {
    default = "default"
}
variable "network" {
    default = "Public"
}
variable "volume_size" {
    default = "21"
}
