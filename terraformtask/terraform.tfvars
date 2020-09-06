my_env = {
  docker_container_name = "blubirdcont"
  docker_volume_name = "blubirdvol"
  docker_network_name = "blubirdnw"
  docker_host = "unix:///var/run/docker.sock"
  docker_image = "nx:latest"
  docker_path = "/usr/share/nginx/html"
  restart_type = "always"
  ext_port = 1245
  int_port = 80
  nx_content = ["nx_data=Welcome to Blubird :)"]
}