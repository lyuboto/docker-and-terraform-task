provider "docker" {
  host = var.nginx_cont_settings.docker_host
}

resource "docker_image" "my_image" {
  name         = var.nginx_cont_settings.docker_image
  keep_locally = var.nginx_cont_settings.docker_image_state
}

resource "docker_network" "my_network" {
  name = var.nginx_cont_settings.docker_network_name
}

resource "docker_volume" "my_volume" {
  name = var.nginx_cont_settings.docker_volume_name
}

resource "docker_container" "my_container" {
  name  = var.nginx_cont_settings.docker_container_name
  image = docker_image.my_image.name
  volumes {
    volume_name    = docker_volume.my_volume.name
    container_path = var.nginx_cont_settings.docker_path
  }
  networks_advanced {
    name = docker_network.my_network.name
  }
  ports {
    internal = var.nginx_cont_settings.int_port
    external = var.nginx_cont_settings.ext_port
  }
  restart = var.nginx_cont_settings.restart_type
  env     = var.nginx_cont_settings.nx_content
}