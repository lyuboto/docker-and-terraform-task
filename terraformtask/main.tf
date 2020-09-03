provider "docker" {
  host = var.docker_host
}

resource "docker_image" "docker_image" {
  name = var.docker_image
}

resource "docker_network" "docker_network" {
  name = var.docker_network_name
}

resource "docker_volume" "docker_volume" {
  name = var.docker_volume_name
  labels {
    label = [ 
	  "owner"
	  "env"
	]
	value = [
	  "lyubo"
	  "test"
	]
  }

}

resource "docker_container" "docker_container" {
  name  = var.docker_container_name
  image = docker_image.docker_image.name
  volumes {
    volume_name    = docker_volume.docker_volume.name
    container_path = var.docker_path
  }
  networks_advanced {
    name = docker_network.docker_network.name
  }
  ports {
    internal = var.int_port
	external = var.ext_port
  }
  restart = var.restart_type
}
