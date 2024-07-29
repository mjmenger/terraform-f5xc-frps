variable frps_instance_name {
    type = string
}
variable frps_namespace {
    type = string
}
variable frps_create_namespace {
    type    = bool
    default = true
}
variable frps_control_listener_port {
    type = number
}
variable frps_http_listener_port {
    type = number
}
variable frps_https_listener_port {
    type = number
}
variable frps_auth_token {
    type = string
}
variable frps_app_name {
    type = string
}
variable f5xc_appstack_site {
    type = string
}
variable f5xc_namespace {
    type = string
}
variable f5xc_tenant_id {
    type = string
}
variable f5xc_dns_zone {
    type = string
}
variable frps_chart_repository {
    type    = string
    default = "https://f5businessdevelopment.github.io/helm-charts"
}
variable frps_chart_name {
    type    = string
    default = "f5xc-frps"
}
variable frps_chart_version {
    type    = string
    default = "0.0.6"
}
