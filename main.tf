data "cloudflare_worker" "worker_lookup" {
  for_each = var.worker_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  worker_id  = each.value.worker_id
}

