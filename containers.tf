resource "docker_container" "nginx" {
  name  = var.nginx_container_name
  image = docker_image.nginx_image.latest

  restart = var.restart_policy

  ports {
    internal = 80
    external = var.http_port
    ip       = var.http_interface_bind
  }

  ports {
    internal = 443
    external = var.https_port
    ip       = var.https_interface_bind
  }

  volumes {
    container_path = "/etc/nginx/"
    host_path      = docker_volume.web_server_volume.mountpoint
    read_only      = false
  }
}
