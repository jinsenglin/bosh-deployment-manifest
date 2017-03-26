# USAGE

bash generateCert.sh BOSH-DIRECTOR-IP

MODIFY openstack-stub.yml

spiff merge bosh-template.yml openstack-stub.yml > bosh-deployment.yml

bosh-init deploy bosh-deployment.yml

bosh-cli --ca-cert certs/rootCA.pem -e BOSH-DIRECTOR-IP login

spiff merge cloud-config-template.yml openstack-stub.yml > cloud-config.yml

bosh-cli --ca-cert certs/rootCA.pem -e BOSH-DIRECTOR-IP update-cloud-config cloud-config.yml

bosh-cli --ca-cert certs/rootCA.pem -e BOSH-DIRECTOR-IP upload-stemcell STEMCELL-URL

bosh-cli --ca-cert certs/rootCA.pem -e BOSH-DIRECTOR-IP env # to get director uuid

MODIFY director-stub.yml and concourse-stub.yml

spiff merge concourse-template.yml openstack-stub.yml director-stub.yml concourse-stub.yml > concourse-deployment.yml

bosh-cli --ca-cert certs/rootCA.pem -e BOSH-DIRECTOR-IP deploy concourse-deployment.yml

# VERSION NOTES

* bosh-director.release 261.4
* bosh-openstack-cpi.release 31
* bosh-openstack-kvm-ubuntu-trusty-go_agent.stemcell 3363.12

# REFERENCES

* https://bosh.io/docs/director-certs.html
* https://concourse.ci/clusters-with-bosh.html
