variable "docker_container_name" {
  type = string
}
variable "docker_volume_name" {
  type = string
}
variable "docker_network_name" {
  type = string
}
variable "docker_host" {
  type = string
}
variable "docker_image" {
  type = string
}
variable "docker_path" {
  type = string
}
variable "restart_type" {
  type = string
}
variable "ext_port" {
  type = number
}
variable "int_port" {
  type = number
}
variable "lopts" {
  type = object ({
    max-size = string
	max-file = number
  })
}
