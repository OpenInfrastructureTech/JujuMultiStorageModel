if [ -e ~/juju.rc ]; then
	source ~/juju.rc
else
	print missing ~/juju.rc
	exit -1
fi
openstack keypair delete juju
openstack keypair create --public-key ~/.ssh/id_rsa.pub juju
nova boot --flavor ceph --image xenial-server-cloudimg-amd64-disk1.img --nic net-name=juju-net --ephemeral size=80 --key-name juju --min 10 wap
openstack server list -f csv | grep 'wap-'

