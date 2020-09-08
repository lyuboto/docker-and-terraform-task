my_env = {
  docker_host           = "unix:///var/run/docker.sock"
  docker_image          = "nx:latest"
  docker_image_state    = true
  docker_network_name   = "blubirdnw"
  docker_volume_name    = "blubirdvol"
  docker_container_name = "blubirdcont"
  docker_path           = "/usr/share/nginx/html"
  ext_port              = 1245
  int_port              = 80
  restart_type          = "always"
  nx_content            = ["nx_data=Welcome to Blubird :)"]
}