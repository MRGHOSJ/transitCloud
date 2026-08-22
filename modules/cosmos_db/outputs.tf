output "account_name" {
  description = "Name of the Cosmos DB account"
  value       = azurerm_cosmosdb_account.this.name
}

output "database_name" {
  description = "Name of the MongoDB database"
  value       = azurerm_cosmosdb_mongo_database.this.name
}

output "connection_string" {
  description = "Primary MongoDB connection string (sensitive)"
  value       = azurerm_cosmosdb_account.this.primary_mongodb_connection_string
  sensitive   = true
}

output "endpoint" {
  description = "Cosmos DB account endpoint URL"
  value       = azurerm_cosmosdb_account.this.endpoint
}
