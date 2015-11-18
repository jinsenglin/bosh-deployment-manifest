#!/bin/bash

ruby change-ip-and-ssl.rb \
/root/.jinseng/github-openstack-cf/openstack-cf-215.yml \
/root/.jinseng/github-openstack-cf/new-openstack-cf-215.yml \
140.92.27.254 \
124.9.14.35 \
/root/.jinseng/xip.io-ssl-generator/124.9.14.35.xip.io/124.9.14.35.xip.io.key \
/root/.jinseng/xip.io-ssl-generator/124.9.14.35.xip.io/124.9.14.35.xip.io.crt

