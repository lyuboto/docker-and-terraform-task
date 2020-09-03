variable "docker_container_name" {
  type = string
}
variable "docker_volume_name" {
  type = string
}
variable "docker_network_name" {
  type = string
}
#variable "ext_port" {}
#variable "int_port" {}
variable "docker_host" {}
variable "docker_image" {}
variable "docker_path" {}
variable "restart_type" {}

variable "ports_details" {
  type = object ({
    ext_port = number
	int_port = number
  })
}