echo "*** CHECKING READINESS OF HTTP LOAD BALANCER $DISTRIBUTED_CLOUD_TENANT / $DISTRIBUTED_CLOUD_NAMESPACE / $FRPS_INSTANCE_NAME ***"


for x in `seq 1 120`; do
    site_state=$(curl --location --request GET https://$DISTRIBUTED_CLOUD_TENANT.console.ves.volterra.io/api/config/namespaces/$DISTRIBUTED_CLOUD_NAMESPACE/http_loadbalancers/$FRPS_INSTANCE_NAME-f5xc-frps-http  -H "Authorization: APIToken $DISTRIBUTED_CLOUD_API_TOKEN" -H "content-type: application/json" -s  |jq -r .spec.state)
if [ "$site_state" = "VIRTUAL_HOST_READY" ]; then
   echo "$site_state: $FRPS_INSTANCE_NAME is ready.  Safe to proceed. [$x minutes elapsed]"
   echo 'Ready to serve requests from frpc client applications'
   exit 0
else
    echo "$site_state: wait for $FRPS_INSTANCE_NAME to be VIRTUAL_HOST_READY before proceeding.  [$x minutes elapsed]"
    #exit 1
fi 
sleep 60;
done;
echo "$site_state: wait for $FRPS_INSTANCE_NAME to be ONLINE before proceeding; timed out after 120 minutes"