data "okta_email_templates" "email_templates_lookup" {
  for_each = var.email_templates_lookup

  brand_id = each.value.brand_id
}

