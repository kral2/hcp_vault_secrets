# Copyright (c) Çetin ARDAL
# SPDX-License-Identifier: MIT

output "webapp_secrets" {
  value       = data.hcp_vault_secrets_app.webapp
  description = "map of secrets for the application named webapp."
  sensitive   = true
}
