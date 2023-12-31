# HCP Vault Secrets with Terraform

This repo shows how to consume HCP Vault Secrets from Terraform Cloud.

It follows the instructions on [HCP Vault Secrets quick start](https://developer.hashicorp.com/vault/tutorials/hcp-vault-secrets-get-started/hcp-vault-secrets-terraform) tutorials.

## Usage

1. Update your backend's information (`organization` and `workspace name`) in `main.tf`
2. Create a TFC variable set for your HCP credentials (`HCP_CLIENT_ID` and `HCP_CLIENT_SECRET`) and assign it to your workspace
3. Apply your configuration

```shell
> terraform init
> terraform plan
> terraform apply
```

## Terraform Configuration information

<!-- BEGIN_TF_DOCS -->

### Requirements

| Name | Version |
|------|---------|
| hcp | 0.67.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [hcp_vault_secrets_app.webapp](https://registry.terraform.io/providers/hashicorp/hcp/0.67.0/docs/data-sources/vault_secrets_app) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| HCP\_CLIENT\_ID | The OAuth2 Client ID for API operations. | `string` | n/a | yes |
| HCP\_CLIENT\_SECRET | The OAuth2 Client Secret for API operations. | `string` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| webapp\_secrets | map of secrets for the application named webapp. |

<!-- END_TF_DOCS -->