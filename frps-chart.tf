
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
    value = var.frps_auth_token 
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

output helm_release_notes {
  value = helm_release.frps.metadata[0].notes
}