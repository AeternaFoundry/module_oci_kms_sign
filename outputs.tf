output "kms_signs_id" {
  description = "Map of id values across all kms_signs, keyed the same as var.kms_signs except keys with no id are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_signs_crypto_endpoint" {
  description = "Map of crypto_endpoint values across all kms_signs, keyed the same as var.kms_signs except keys with no crypto_endpoint are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.crypto_endpoint if v.crypto_endpoint != null && length(v.crypto_endpoint) > 0 }
}
output "kms_signs_key_id" {
  description = "Map of key_id values across all kms_signs, keyed the same as var.kms_signs except keys with no key_id are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_signs_key_version_id" {
  description = "Map of key_version_id values across all kms_signs, keyed the same as var.kms_signs except keys with no key_version_id are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.key_version_id if v.key_version_id != null && length(v.key_version_id) > 0 }
}
output "kms_signs_message" {
  description = "Map of message values across all kms_signs, keyed the same as var.kms_signs except keys with no message are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.message if v.message != null && length(v.message) > 0 }
}
output "kms_signs_message_type" {
  description = "Map of message_type values across all kms_signs, keyed the same as var.kms_signs except keys with no message_type are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.message_type if v.message_type != null && length(v.message_type) > 0 }
}
output "kms_signs_signature" {
  description = "Map of signature values across all kms_signs, keyed the same as var.kms_signs except keys with no signature are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.signature if v.signature != null && length(v.signature) > 0 }
}
output "kms_signs_signing_algorithm" {
  description = "Map of signing_algorithm values across all kms_signs, keyed the same as var.kms_signs except keys with no signing_algorithm are omitted"
  value       = { for k, v in oci_kms_sign.kms_signs : k => v.signing_algorithm if v.signing_algorithm != null && length(v.signing_algorithm) > 0 }
}

