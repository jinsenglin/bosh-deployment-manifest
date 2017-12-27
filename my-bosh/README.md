# USAGE

```
BOSH_DIRECTOR_IP=192.168.210.25
```

bash generateCert.sh $BOSH_DIRECTOR_IP

MODIFY openstack-stub.yml

spiff merge bosh-template.yml openstack-stub.yml > bosh-deployment.yml

bosh-init deploy bosh-deployment.yml

bosh-cli --ca-cert certs/rootCA.pem -e $BOSH_DIRECTOR_IP login # admin / admin

spiff merge cloud-config-template.yml openstack-stub.yml > cloud-config.yml

bosh-cli --ca-cert certs/rootCA.pem -e $BOSH_DIRECTOR_IP update-cloud-config cloud-config.yml

bosh-cli --ca-cert certs/rootCA.pem -e $BOSH_DIRECTOR_IP upload-stemcell STEMCELL-URL

bosh-cli --ca-cert certs/rootCA.pem -e $BOSH_DIRECTOR_IP env # to get director uuid

MODIFY director-stub.yml and concourse-stub.yml

spiff merge concourse-template.yml openstack-stub.yml director-stub.yml concourse-stub.yml > concourse-deployment.yml

bosh-cli --ca-cert certs/rootCA.pem -e $BOSH_DIRECTOR_IP -d concourse deploy concourse-deployment.yml

# VERSION NOTES

* bosh-director.release 261.4
* bosh-openstack-cpi.release 31
* bosh-openstack-kvm-ubuntu-trusty-go_agent.stemcell 3363.12
* concourse.release 2.7.0
* garden-runc.release 1.3.0

# EXAMPLE VARIABLES

* BOSH-DIRECTOR-IP=192.168.210.25
* STEMCELL-URL=https://bosh.io/d/stemcells/bosh-openstack-kvm-ubuntu-trusty-go_agent?v=3363.12

# REFERENCES

* https://bosh.io/docs/director-certs.html
* https://concourse.ci/clusters-with-bosh.html
* https://bosh.io/releases

# TODO

* update security group of machine 'web' to allow TCP 8080

# EXTRA

spiff merge concourse-to-riemann-template.yml openstack-stub.yml director-stub.yml concourse-stub.yml > concourse-deployment.yml

bosh-cli --ca-cert certs/rootCA.pem -e BOSH-DIRECTOR-IP -d concourse deploy concourse-deployment.yml

# SSH

ssh -i bosh.pem vcap@BOSH-DIRECTOR-IP

```
concourse web 192.168.210.28:8080
riemann       192.168.210.56
influxdb      192.168.210.30:8083
grafana       192.168.210.32:3000
```

# LOG

/var/vcap/sys/log/RIEMANN/riemann.log
