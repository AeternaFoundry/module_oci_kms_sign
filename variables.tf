variable "kms_signs" {
  description = <<EOT
Map of kms_signs, attributes below
Required:
    - crypto_endpoint
    - key_id
    - message
    - signing_algorithm
Optional:
    - key_version_id
    - message_type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    crypto_endpoint   = string
    key_id            = string
    message           = string
    signing_algorithm = string
    key_version_id    = optional(string)
    message_type      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

