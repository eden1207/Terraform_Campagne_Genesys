resource "genesyscloud_routing_queue" "TEST_QUEUE" {
  name                     = "File d'attente Alexis pour Terraform"
  division_id              = var.DIVISION_ID
  description              = "Test de file d'attente pour entraînement à Terraform"
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  acw_timeout_ms           = 300000
  skill_evaluation_method  = "BEST"
  whisper_prompt_id        = var.WHISPER_PROMPT_ID
  auto_answer_only         = false
  enable_transcription     = false
  enable_manual_assignment = false
  outbound_email_address {
    domain_id = "CoffeeMSdynamics.mypurecloud.de"
    route_id  = var.ROUTE_ID
  }
  bullseye_rings {
    expansion_timeout_seconds = 15.1
    member_groups {
      member_group_id   = var.MEMBER_GROUP_ID
      member_group_type = "SKILLGROUP"
    }
  }
  members {
    user_id = genesyscloud_user.alexis_user1.id
  }
  members {
    user_id = genesyscloud_user.alexis_user2.id
  }
  members {
    user_id = genesyscloud_user.alexis_user3.id
  }
  members {
    user_id = genesyscloud_user.alexis_user4.id
  }
  wrapup_codes = [genesyscloud_routing_wrapupcode.erreur_numero.id]
}