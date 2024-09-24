resource "genesyscloud_outbound_campaign" "TEST_CAMPAIGN" {
  name            = "Campagne Alexis Terraform"
  dialing_mode    = "preview"
  caller_name     = "Corben Dallas"
  caller_address  = "+33612345678"
  contact_list_id = var.CONTACT_LIST_ID
  phone_columns {
    column_name = "Telephone"
  }
  queue_id  = var.QUEUE_ID
  script_id = var.SCRIPT_ID
  priority  = 2
}