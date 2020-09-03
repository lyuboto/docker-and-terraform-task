variable "docker_container_name" {
  type = string
}
variable "docker_volume_name" {
  type = string
}
#variable "docker_network_name" {
#  type = string
#}
#varibale "ext_port" {}
variable "docker_host" {}
variable "docker_image" {}
varibale "docker_path" {}
variable "int_port" {}
variable "restart_type" {}

variable "terratask" {
  type = object ({
    docker_network_name = string
	ext_port = number
  })
}