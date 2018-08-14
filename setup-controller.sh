ssh-keygen
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
juju bootstrap manual/127.0.0.1 manualcloud
