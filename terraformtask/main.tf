provider "docker" {
  host = var.my_env.docker_host
}

resource "docker_image" "docker_image" {
  name = var.my_env.docker_image
}

resource "docker_network" "docker_network" {
  name = var.my_env.docker_network_name
}

resource "docker_volume" "docker_volume" {
  name = var.my_env.docker_volume_name
}

resource "docker_container" "docker_container" {
  name  = var.my_env.docker_container_name
  image = docker_image.docker_image.name
  volumes {
    volume_name    = docker_volume.docker_volume.name
    container_path = var.my_env.docker_path
  }
  networks_advanced {
    name = docker_network.docker_network.name
  }
  ports {
    internal = var.my_env.int_port
    external = var.my_env.ext_port
  }
  restart = var.my_env.restart_type
}
