terraform-f5xc-frps

In addition to the requirements below, the following environment variables are expected.

VOLT_API_URL: the full url to the F5 Distributed Cloud tenant (e.g. https://tenant.console.ves.volterra.io/api)  
KUBE_CONFIG_PATH: the full path to the kubernetes configuration file to be used by the helm resource.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.14.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 3.4.3 |
| <a name="requirement_volterra"></a> [volterra](#requirement\_volterra) | 0.11.34 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.14.0 |
| <a name="provider_volterra"></a> [volterra](#provider\_volterra) | 0.11.34 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.frps](https://registry.terraform.io/providers/hashicorp/helm/2.14.0/docs/resources/release) | resource |
| [volterra_http_loadbalancer.http](https://registry.terraform.io/providers/volterraedge/volterra/0.11.34/docs/resources/http_loadbalancer) | resource |
| [volterra_origin_pool.control](https://registry.terraform.io/providers/volterraedge/volterra/0.11.34/docs/resources/origin_pool) | resource |
| [volterra_origin_pool.http](https://registry.terraform.io/providers/volterraedge/volterra/0.11.34/docs/resources/origin_pool) | resource |
| [volterra_tcp_loadbalancer.control](https://registry.terraform.io/providers/volterraedge/volterra/0.11.34/docs/resources/tcp_loadbalancer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_f5xc_appstack_site"></a> [f5xc\_appstack\_site](#input\_f5xc\_appstack\_site) | n/a | `string` | n/a | yes |
| <a name="input_f5xc_dns_zone"></a> [f5xc\_dns\_zone](#input\_f5xc\_dns\_zone) | n/a | `string` | n/a | yes |
| <a name="input_f5xc_namespace"></a> [f5xc\_namespace](#input\_f5xc\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_f5xc_tenant_id"></a> [f5xc\_tenant\_id](#input\_f5xc\_tenant\_id) | n/a | `string` | n/a | yes |
| <a name="input_frps_app_name"></a> [frps\_app\_name](#input\_frps\_app\_name) | n/a | `string` | n/a | yes |
| <a name="input_frps_auth_token"></a> [frps\_auth\_token](#input\_frps\_auth\_token) | n/a | `string` | n/a | yes |
| <a name="input_frps_chart_name"></a> [frps\_chart\_name](#input\_frps\_chart\_name) | n/a | `string` | `"f5xc-frps"` | no |
| <a name="input_frps_chart_repository"></a> [frps\_chart\_repository](#input\_frps\_chart\_repository) | n/a | `string` | `"https://f5businessdevelopment.github.io/helm-charts"` | no |
| <a name="input_frps_chart_version"></a> [frps\_chart\_version](#input\_frps\_chart\_version) | n/a | `string` | `"0.0.6"` | no |
| <a name="input_frps_control_listener_port"></a> [frps\_control\_listener\_port](#input\_frps\_control\_listener\_port) | n/a | `number` | n/a | yes |
| <a name="input_frps_create_namespace"></a> [frps\_create\_namespace](#input\_frps\_create\_namespace) | n/a | `bool` | `true` | no |
| <a name="input_frps_http_listener_port"></a> [frps\_http\_listener\_port](#input\_frps\_http\_listener\_port) | n/a | `number` | n/a | yes |
| <a name="input_frps_https_listener_port"></a> [frps\_https\_listener\_port](#input\_frps\_https\_listener\_port) | n/a | `number` | n/a | yes |
| <a name="input_frps_instance_name"></a> [frps\_instance\_name](#input\_frps\_instance\_name) | n/a | `string` | n/a | yes |
| <a name="input_frps_namespace"></a> [frps\_namespace](#input\_frps\_namespace) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helm_release_notes"></a> [helm\_release\_notes](#output\_helm\_release\_notes) | n/a |
<!-- END_TF_DOCS -->