juju add-model cat

HOSTS=`openstack server list | grep ACTIVE | grep 'cat-' | cut -c69-86 | cut -d, -f1`

for i in $HOSTS
do
ssh ubuntu@$i uptime
done

for i in $HOSTS
do
juju add-machine ssh:ubuntu@$i
done

#juju deploy bundle.yaml --map-machines=existing
