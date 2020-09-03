variable "docker_container_name" {
  type = string
}
variable "docker_volume_name" {
  type = string
}
variable "docker_network_name" {
  type = string
}
variable "docker_host" {}
variable "docker_image" {}
variable "docker_path" {}
variable "restart_type" {}
variable "ext_port" {}
variable "int_port" {}
variable "lopts" {
  type = object ({
    max-size = string
	max-file = number
	my-option = string
  })
}