variable "iploadbalancing_http_routes" {
  description = <<EOT
Map of iploadbalancing_http_routes, attributes below
Required:
    - service_name
    - action (block):
        - status (optional)
        - target (optional)
        - type (required)
Optional:
    - display_name
    - frontend_id
    - weight
EOT

  type = map(object({
    service_name = string
    display_name = optional(string)
    frontend_id  = optional(number)
    weight       = optional(number)
    action = object({
      status = optional(number)
      target = optional(string)
      type   = string
    })
  }))
}

