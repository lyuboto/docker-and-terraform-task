variable "my_env" {
  type = object ({
    docker_container_name = string
	docker_volume_name = string
	docker_network_name = string
	docker_host = string
	docker_image = string
	docker_path = string
	restart_type = string
	int_port = number
	ext_port = number
  })
}