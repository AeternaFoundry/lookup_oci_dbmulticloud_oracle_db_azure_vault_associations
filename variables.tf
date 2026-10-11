variable "dbmulticloud_oracle_db_azure_vault_associations_lookup" {
  description = <<EOT
Map of dbmulticloud_oracle_db_azure_vault_associations_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - oracle_db_azure_connector_id
    - oracle_db_azure_vault_association_id
    - oracle_db_azure_vault_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                       = string
    display_name                         = optional(string)
    oracle_db_azure_connector_id         = optional(string)
    oracle_db_azure_vault_association_id = optional(string)
    oracle_db_azure_vault_id             = optional(string)
    state                                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

