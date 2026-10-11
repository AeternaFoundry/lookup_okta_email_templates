variable "email_templates_lookup" {
  description = <<EOT
Map of email_templates_lookup, attributes below
Required:
    - brand_id
EOT

  type = map(object({
    brand_id = string
  }))
}

