resource "genesyscloud_outbound_contact_list" "TEST_CONTACTLIST" {
  name         = "Liste de contacts Alexis Terraform"
  division_id  = var.DIVISION_ID
  column_names = ["Agent Prefered", "Telephone", "SortOrder"]
  phone_columns {
    column_name = "Telephone"
    type        = "Portable"
  }
}