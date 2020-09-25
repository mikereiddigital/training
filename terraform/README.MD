# Terraform

## Installing Terraform

https://learn.hashicorp.com/tutorials/terraform/install-cli

`brew install terraform`

OR - with terraform version manager (if you want to switch to different versions)

https://github.com/tfutils/tfenv

## Running commands through AWS Vault

Initiate Terraform with:

`aws-vault exec laa-sandbox-lz -- terraform init`


Then you should be able to run terraform, similar to:

`aws-vault exec laa-sandbox-lz -- terraform plan`

You might be prompted for your MFA token, but the plan should be created.
