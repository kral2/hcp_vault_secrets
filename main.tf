terraform {
  cloud {
    organization = "hashikral"
    workspaces {
      name = "hcp-vault-secrets"
    }
  }
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.67.0"
    }
  }
}

provider "hcp" {
  client_id     = var.HCP_CLIENT_ID
  client_secret = var.HCP_CLIENT_SECRET
}

data "hcp_vault_secrets_app" "webapp" {
  app_name = "webapp"
}
