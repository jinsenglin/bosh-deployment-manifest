# USAGE

MODIFY openstack-stub.yml

spiff merge bosh-template.yml openstack-stub.yml > bosh-deployment.yml

bosh-init deploy bosh-deployment.yml

MODIFY openstack-cloud-config.yml

bosh-cli update cloud-config openstack-cloud-config.yml

MODIFY concourse-deployment.yml

bosh-cli deployment concourse-deployment.yml

bosh-cli deploy

# VERSION NOTES

* bosh-director.release 261.4
* bosh-openstack-cpi.release 31
* bosh-openstack-kvm-ubuntu-trusty-go_agent.stemcell 3363.12
