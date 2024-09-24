terraform {
  required_providers {
    genesyscloud = {
      source  = "MyPureCloud/genesyscloud"
      version = "~> 1.26.0"
    }
  }
}

locals {
  trigramme = "ALEXIS_CAMPAGNE"
  oauthclient_id = {
    dev     = var.DEV_CLIENT_ID
    staging = ""
    prod    = ""
  }
  oauthclient_secret = {
    dev     = var.DEV_CLIENT_SECRET
    staging = ""
    prod    = ""
  }
  aws_region = {
    dev     = var.DEV_AWS_REGION
    staging = ""
    prod    = ""
  }
}

module "queue_module" {
  source            = "./modules/queue_module"
  CLIENT_ID         = local.oauthclient_id[terraform.workspace]
  CLIENT_SECRET     = local.oauthclient_secret[terraform.workspace]
  DIVISION_ID       = var.DEV_DIVISION_ID
  WHISPER_PROMPT_ID = var.DEV_WHISPER_PROMPT_ID
  ROUTE_ID          = var.DEV_ROUTE_ID
  MEMBER_GROUP_ID   = var.DEV_MEMBER_GROUP_ID
}

module "contactlist_module" {
  source        = "./modules/contactlist_module"
  CLIENT_ID     = local.oauthclient_id[terraform.workspace]
  CLIENT_SECRET = local.oauthclient_secret[terraform.workspace]
  DIVISION_ID   = var.DEV_DIVISION_ID
}

module "campaign_module" {
  source          = "./modules/campaign_module"
  CLIENT_ID       = local.oauthclient_id[terraform.workspace]
  CLIENT_SECRET   = local.oauthclient_secret[terraform.workspace]
  SCRIPT_ID       = var.DEV_SCRIPT_ID
  QUEUE_ID        = module.queue_module.queue_id
  CONTACT_LIST_ID = module.contactlist_module.contact_list_id
}