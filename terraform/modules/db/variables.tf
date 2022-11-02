variable "db_disk_image" {
  description = "Disk image for reddit db"
  default = "reddit-db-base"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable private_key_path {
  description = "path to private key"
}
variable "need_app_deploy" {
  description = "Need to deploy app"
  type = bool
  default = false
}
