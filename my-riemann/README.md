# PREREQUISITES

my-bosh

# USAGE

MODIFY riemann-stub.yml

spiff merge riemann-template.yml ../my-bosh/director-stub.yml riemann-stub.yml > riemann-deployment.yml

bosh-cli --ca-cert ../my-bosh/certs/rootCA.pem -e BOSH-DIRECTOR-IP -d riemann deploy riemann-deployment.yml

# VERSION NOTES

* riemann.release 5
* influxdb.release 4
* grafana.release 10 (grafana 4.1.2)

# EXAMPLE VARIABLES

* BOSH-DIRECTOR-IP=192.168.210.25

# REFERENCES

* https://concourse.ci/metrics.html

# TODO

* update security group of machine 'grafana' to allow TCP 3000
