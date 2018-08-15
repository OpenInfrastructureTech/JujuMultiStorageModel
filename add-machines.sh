HOSTS=`openstack server list | grep 'wap-' | cut -c69-86`

for i in $HOSTS
do
ssh ubuntu@$i uptime
done

for i in $HOSTS
do
juju add-machine ssh:ubuntu@$i
done
