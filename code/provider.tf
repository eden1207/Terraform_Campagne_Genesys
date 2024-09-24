provider "genesyscloud" {
  oauthclient_id     = local.oauthclient_id[terraform.workspace]
  oauthclient_secret = local.oauthclient_secret[terraform.workspace]
  aws_region         = local.aws_region[terraform.workspace]
}