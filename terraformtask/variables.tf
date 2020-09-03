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
#variable "ext_port" {}
#variable "int_port" {}

variable "port_def" {
  type = object ({
    int_port = number,
	ext_port = number
  })
}