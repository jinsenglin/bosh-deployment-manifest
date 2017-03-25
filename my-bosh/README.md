MODIFY openstack-stub.yml

spiff merge bosh-template.yml openstack-stub.yml > bosh-deployment.yml

bosh-init deploy ./bosh-deployment.yml
