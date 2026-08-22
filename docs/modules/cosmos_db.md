<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_cosmosdb_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_account) | resource |
| [azurerm_cosmosdb_mongo_database.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_mongo_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Name of the MongoDB database to create | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Azure region for deployment | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Cosmos DB account | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group to deploy into | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | Name of the Cosmos DB account |
| <a name="output_connection_string"></a> [connection\_string](#output\_connection\_string) | Primary MongoDB connection string (sensitive) |
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | Name of the MongoDB database |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | Cosmos DB account endpoint URL |
<!-- END_TF_DOCS -->