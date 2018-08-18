HOSTS=`openstack server list | grep ACTIVE | grep 'lat-' | cut -c69-86 | cut -d, -f1`

for i in $HOSTS
do
ssh ubuntu@$i uptime
done

for i in $HOSTS
do
juju add-machine ssh:ubuntu@$i
done
