variable "app_disk_image" {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to public key"
}
variable "need_app_deploy" {
  description = "Need to deploy app"
  type = bool
  default = false
}
variable "private_key_path" {
  description = "Path to private key"
}
variable db_ip {
  description = "database IP"
}
