provider "docker" {
  host = var.my_env.docker_host
}

resource "docker_image" "my_image" {
  name         = var.my_env.docker_image
  keep_locally = var.my_env.docker_image_state
}

resource "docker_network" "my_network" {
  name = var.my_env.docker_network_name
}

resource "docker_volume" "my_volume" {
  name = var.my_env.docker_volume_name
}

resource "docker_container" "my_container" {
  name  = var.my_env.docker_container_name
  image = docker_image.my_image.name
  volumes {
    volume_name    = docker_volume.my_volume.name
    container_path = var.my_env.docker_path
  }
  networks_advanced {
    name = docker_network.my_network.name
  }
  ports {
    internal = var.my_env.int_port
    external = var.my_env.ext_port
  }
  restart = var.my_env.restart_type
  env     = var.my_env.nx_content
}