# isntall the required OS components


snap install juju --classic
snap install openstackclients  --classic
adduser juju
# juju needs sudo to setup controller
usermod -g sudo juju
