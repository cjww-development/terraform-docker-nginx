data "docker_registry_image" "nginx" {
  name = var.nginx_image_name
}

resource "docker_image" "nginx_image" {
  name          = data.docker_registry_image.nginx.name
  pull_triggers = [data.docker_registry_image.nginx.sha256_digest]
  keep_locally  = true
}
