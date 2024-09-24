provider "genesyscloud" {
  oauthclient_id     = var.CLIENT_ID
  oauthclient_secret = var.CLIENT_SECRET
  aws_region         = "eu-central-1"
}