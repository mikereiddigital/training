# Setting up AWS Vault

https://github.com/99designs/aws-vault

We use AWS Vault to enable Terraform to log in to AWS with the MFA key (this is not possible with Terraform as default currently, see [this GitHub issue for more context as to why aws-vault is needed](https://github.com/terraform-providers/terraform-provider-aws/issues/2420).)

## Install aws-vault

`brew cask install aws-vault`

## Set AWS profiles and credentials

Configure your AWS CLI install as per [the Identity Access Management Confluence page](https://dsdmoj.atlassian.net/wiki/spaces/LM/pages/293536178/Identity+Access+Management).

## Add your profile to vault

`aws-vault add laa-shared-services`

This configures aws-vault to contain the details needed to interact with terraform (namely MFA session management).
