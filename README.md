[![Apache-2.0 license](http://img.shields.io/badge/license-Apache-brightgreen.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

terraform-nginx
==================

This repository deploys an Nginx and certbot setup to docker

## Docs
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.9 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.nginx](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_image.nginx_image](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/image) | resource |
| [docker_network.web_server_network](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/network) | resource |
| [docker_volume.web_server_volume](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/volume) | resource |
| [docker_registry_image.nginx](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/data-sources/registry_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_docker_host"></a> [docker\_host](#input\_docker\_host) | The host where docker resides | `string` | n/a | yes |
| <a name="input_http_interface_bind"></a> [http\_interface\_bind](#input\_http\_interface\_bind) | The network interface that the http port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_http_port"></a> [http\_port](#input\_http\_port) | The host port number the internal port 80 (http) will map to | `number` | `80` | no |
| <a name="input_https_interface_bind"></a> [https\_interface\_bind](#input\_https\_interface\_bind) | The network interface that the https port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_https_port"></a> [https\_port](#input\_https\_port) | The host port number the internal port 443 (https) will map to | `number` | `443` | no |
| <a name="input_nginx_container_name"></a> [nginx\_container\_name](#input\_nginx\_container\_name) | The name of the Pi Hole container to be created | `string` | n/a | yes |
| <a name="input_nginx_image_name"></a> [nginx\_image\_name](#input\_nginx\_image\_name) | The name of the Pi Hole docker image that should be pulled | `string` | n/a | yes |
| <a name="input_restart_policy"></a> [restart\_policy](#input\_restart\_policy) | The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to no. | `string` | n/a | yes |
| <a name="input_web_server_network_name"></a> [web\_server\_network\_name](#input\_web\_server\_network\_name) | The name of the docker network that the Pi Hole container will be connected to | `string` | n/a | yes |
| <a name="input_web_server_volume_name"></a> [web\_server\_volume\_name](#input\_web\_server\_volume\_name) | The name of the docker volume to be used by the Pi Hole container | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

License
=======
This code is open sourced licensed under the Apache 2.0 License
