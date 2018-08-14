nova boot --flavor ceph --image  bionic-server-cloudimg-amd64.img  --nic net-name=juju-net --ephemeral size=80 --key-name juju --min 10 wap
openstack server list -f csv | grep 'wap-'

