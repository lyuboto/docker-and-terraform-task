docker_container_name = "blubirdcont"
docker_volume_name = "blubirdvol"
docker_network_name = "blubirdnw"
ext_port = "1245"
int_port = "80"
docker_host = "unix:///var/run/docker.sock"
docker_image = "nx:latest"
docker_path = "/usr/share/nginx/html"
restart_type = "always"
sysc = {
  first = "SH"
  second = "NET"
}