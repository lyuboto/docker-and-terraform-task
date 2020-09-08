output "IP_Address" {
  value = docker_container.my_container.ip_address
}

output "Letter" {
  description = "If external port is odd, return b. If it's even, return a"
  value       = var.nginx_cont_settings.ext_port % 2 == 0 ? "a" : "b"
}

