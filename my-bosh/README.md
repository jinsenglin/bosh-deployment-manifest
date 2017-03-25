MODIFY openstack-stub.yml

spiff merge bosh-template.yml openstack-stub.yml > bosh-deployment.yml

bosh-init deploy ./bosh-deployment.yml

# VERSION NOTES

* bosh-director.release 261.4
* bosh-openstack-cpi.release 31
* bosh-openstack-kvm-ubuntu-trusty-go_agent.stemcell 3363.12
