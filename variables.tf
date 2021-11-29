variable "docker_host" {
  type        = string
  description = "The host where docker resides"
}

variable "web_server_volume_name" {
  type        = string
  description = "The name of the docker volume to be used by the Pi Hole container"
}

variable "web_server_network_name" {
  type        = string
  description = "The name of the docker network that the Pi Hole container will be connected to"
}

variable "nginx_image_name" {
  type        = string
  description = "The name of the Pi Hole docker image that should be pulled"
}

variable "nginx_container_name" {
  type        = string
  description = "The name of the Pi Hole container to be created"
}

variable "restart_policy" {
  type        = string
  description = "The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to no."
  validation {
    condition = contains(
      [
        "no",
        "on-failure",
        "always",
        "unless-stopped"
      ],
      var.restart_policy
    )
    error_message = "The provided value did not match a valid value."
  }
}

variable "http_port" {
  type        = number
  description = "The host port number the internal port 80 (http) will map to"
  default     = 80
}

variable "http_interface_bind" {
  type        = string
  description = "The network interface that the http port will bind to"
  default     = "0.0.0.0"
}

variable "https_port" {
  type        = number
  description = "The host port number the internal port 443 (https) will map to"
  default     = 443
}

variable "https_interface_bind" {
  type        = string
  description = "The network interface that the https port will bind to"
  default     = "0.0.0.0"
}
