variable "worker_lookup" {
  description = <<EOT
Map of worker_lookup, attributes below
Optional:
    - account_id
    - filter
    - worker_id
EOT

  type = map(object({
    account_id = optional(string)
    filter = optional(object({
      order    = optional(string)
      order_by = optional(string)
    }))
    worker_id = optional(string)
  }))
}

