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

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 80
      external = 1245
      protocol = "tcp"
    }
  ]
}