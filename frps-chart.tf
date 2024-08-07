
locals {

}

resource "helm_release" "frps" {
  name             = var.frps_instance_name
  namespace        = var.frps_namespace
  repository       = var.frps_chart_repository
  chart            = var.frps_chart_name
  version          = var.frps_chart_version
  create_namespace = var.frps_create_namespace

  set {
    name  = "bindPort"
    value = var.frps_control_listener_port 
  }
  set {
    name  = "vhostHTTPPort"
    value = var.frps_http_listener_port 
  }
  set {
    name  = "vhostHTTPSPort"
    value = var.frps_https_listener_port 
  }
  set {
    name  = "authToken"
    value = local.frps_auth_token
  }
  set {
    name  = "frpsPublicAddress"
    value = format("%s.%s", var.frps_instance_name, var.f5xc_dns_zone )
  }
  set {
    name  = "frpcProxyName"
    value = var.frpc_proxy_name == "" ?  var.frpc_proxy_name  : format("%s.%s", var.frps_instance_name, var.f5xc_dns_zone )
  }
  set {
    name  = "frpcProxyType"
    value = var.frpc_proxy_type
  }
  set {
    name  = "frpcProxyAddress"
    value = var.frpc_proxy_address
  }
  set {
    name  = "frpcProxyPort"
    value = var.frpc_proxy_port
  }
  # set {
  #   name = "caCert"
  #   value = file("${path.module}/certs/ca.crt")
  # }
  # set {
  #   name = "serverCert"
  #   value = file("${path.module}/certs/server.crt")
  # }
  # set {
  #   name = "serverKey"
  #   value = file("${path.module}/certs/server.key")
  # }

}

