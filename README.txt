# bosh-deployment-manifest

# Usage
spiff merge <deployment>.yml <deployment>-resource-pools.yml <deployment>-jobs.yml <deployment>-properties.yml <deployment>-infrastructure-<iaas>.yml > <deployment>.yaml && bosh-init deploy <deployment>.yaml

# Example Usage
spiff merge concourse-ci.yml concourse-ci-resource-pools.yml concourse-ci-jobs.yml concourse-ci-properties.yml concourse-ci-infrastructure-openstack.yml > concourse-ci.yaml && bosh-init deploy concourse-ci.yaml
