output "email_templates_lookup_id" {
  description = "Map of id values across all email_templates_lookup, keyed the same as var.email_templates_lookup"
  value       = { for k, v in data.okta_email_templates.email_templates_lookup : k => v.id }
}
output "email_templates_lookup_brand_id" {
  description = "Map of brand_id values across all email_templates_lookup, keyed the same as var.email_templates_lookup"
  value       = { for k, v in data.okta_email_templates.email_templates_lookup : k => v.brand_id }
}
output "email_templates_lookup_email_templates" {
  description = "Map of email_templates values across all email_templates_lookup, keyed the same as var.email_templates_lookup"
  value       = { for k, v in data.okta_email_templates.email_templates_lookup : k => v.email_templates }
}

