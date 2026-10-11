output "email_templates_lookup_id" {
  description = "Map of id values across all email_templates_lookup, keyed the same as var.email_templates_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_email_templates.email_templates_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "email_templates_lookup_brand_id" {
  description = "Map of brand_id values across all email_templates_lookup, keyed the same as var.email_templates_lookup except keys with no brand_id are omitted"
  value       = { for k, v in data.okta_email_templates.email_templates_lookup : k => v.brand_id if v.brand_id != null && length(v.brand_id) > 0 }
}
output "email_templates_lookup_email_templates" {
  description = "Map of email_templates values across all email_templates_lookup, keyed the same as var.email_templates_lookup except keys with no email_templates are omitted"
  value       = { for k, v in data.okta_email_templates.email_templates_lookup : k => v.email_templates if v.email_templates != null && length(v.email_templates) > 0 }
}

