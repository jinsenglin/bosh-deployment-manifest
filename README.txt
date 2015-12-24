# bosh-deployment-manifest

# Usage
spiff merge <deployment>.yml <deployment>-resource-pools.yml <deployment>-jobs.yml <deployment>-properties.yml <deployment>-infrastructure-<iaas>.yml > <deployment>.yaml && bosh-init deploy <deployment>.yaml

# Example Usage
spiff merge concourse-ci.yml openstack-stub.yml && bosh-init deploy concourse-ci.yml
