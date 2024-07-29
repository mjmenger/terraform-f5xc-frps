export KUBECONFIG_CERT_EXPIRE_DATE=$(date -d "2 days" +%Y-%m-%dT%H:%M:%S.%NZ)

echo '*** RETRIEVING APP STACK KUBECONFIG ***'
curl --location -o "$KUBE_CONFIG_PATH" --request POST "https://$DISTRIBUTED_CLOUD_TENANT.console.ves.volterra.io/api/web/namespaces/system/sites/$DISTRIBUTED_CLOUD_SITE_NAME/global-kubeconfigs" \
--header "Authorization: APIToken $DISTRIBUTED_CLOUD_API_TOKEN" \
--header 'Access-Control-Allow-Origin: *' \
--header "x-volterra-apigw-tenant: $DISTRIBUTED_CLOUD_TENANT" \
--data-raw "{\"expirationTimestamp\":\"$KUBECONFIG_CERT_EXPIRE_DATE\"}"