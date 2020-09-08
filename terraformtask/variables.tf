variable "my_env" {
  type = object({
    docker_host           = string
    docker_image          = string
    docker_image_state    = bool
    docker_network_name   = string
    docker_volume_name    = string
    docker_container_name = string
    docker_path           = string
    int_port              = number
    ext_port              = number
    restart_type          = string
    nx_content            = set(string)
  })
}