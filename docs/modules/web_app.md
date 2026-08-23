<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.0.0, < 5.0.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.0.0, < 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_linux_web_app.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_always_on"></a> [always\_on](#input\_always\_on) | Keep the app loaded when idle. Ignored on F1 (free) tier — always false there regardless of this setting. | `bool` | `false` | no |
| <a name="input_app_settings"></a> [app\_settings](#input\_app\_settings) | Additional app settings as key-value pairs | `map(string)` | `{}` | no |
| <a name="input_docker_image_name"></a> [docker\_image\_name](#input\_docker\_image\_name) | Docker image to deploy (e.g. owner/image:tag) | `string` | `""` | no |
| <a name="input_docker_registry_password"></a> [docker\_registry\_password](#input\_docker\_registry\_password) | Docker registry password or PAT (leave empty for public repos) | `string` | `""` | no |
| <a name="input_docker_registry_url"></a> [docker\_registry\_url](#input\_docker\_registry\_url) | Docker registry URL (e.g. https://ghcr.io) | `string` | `""` | no |
| <a name="input_docker_registry_username"></a> [docker\_registry\_username](#input\_docker\_registry\_username) | Docker registry username (leave empty for public repos) | `string` | `""` | no |
| <a name="input_https_only"></a> [https\_only](#input\_https\_only) | Restrict traffic to HTTPS only | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region for deployment | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Web App | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group to deploy into | `string` | n/a | yes |
| <a name="input_service_plan_id"></a> [service\_plan\_id](#input\_service\_plan\_id) | ID of the App Service Plan to attach to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_default_hostname"></a> [default\_hostname](#output\_default\_hostname) | Default hostname of the Web App (e.g. app-name.azurewebsites.net) |
| <a name="output_id"></a> [id](#output\_id) | ID of the Web App |
| <a name="output_name"></a> [name](#output\_name) | Name of the Web App |
<!-- END_TF_DOCS -->