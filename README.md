# bosh-deployment-manifest

# Install commands in Mac OSX

bosh-init 0.0.102
```
wget https://s3.amazonaws.com/bosh-init-artifacts/bosh-init-0.0.102-darwin-amd64 -O bosh-init
chmod +x bosh-init
mv bosh-init /usr/local/bin/

bosh-init -v
```

bosh-cli 2.0.1
```
wget https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-2.0.1-darwin-amd64 -O bosh-cli
chmod +x bosh-cli
mv bosh-cli /usr/local/bin/

bosh-cli -v
```

spiff 1.0.8
```
wget https://github.com/cloudfoundry-incubator/spiff/releases/download/v1.0.8/spiff_darwin_amd64.zip -O spiff.zip
unzip spiff.zip
mv spiff /usr/local/bin/

spiff -v
```
