resource "ovh_iploadbalancing_http_route" "iploadbalancing_http_routes" {
  for_each = var.iploadbalancing_http_routes

  service_name = each.value.service_name
  display_name = each.value.display_name
  frontend_id  = each.value.frontend_id
  weight       = each.value.weight

  action {
    status = each.value.action.status
    target = each.value.action.target
    type   = each.value.action.type
  }
}

