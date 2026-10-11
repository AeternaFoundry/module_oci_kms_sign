resource "oci_kms_sign" "kms_signs" {
  for_each = var.kms_signs

  crypto_endpoint   = each.value.crypto_endpoint
  key_id            = each.value.key_id
  message           = each.value.message
  signing_algorithm = each.value.signing_algorithm
  key_version_id    = each.value.key_version_id
  message_type      = each.value.message_type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

