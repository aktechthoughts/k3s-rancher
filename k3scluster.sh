	
#!/bin/bash
# This runs rancher-agent to spin kubenetes using rancher.

docker run -d --privileged --restart=unless-stopped \
                --net=host \
                -v /etc/kubernetes:/etc/kubernetes \
                -v /var/run:/var/run \
                rancher/rancher-agent:v2.5.2 \
                --server https://localhost \
                --token nm9ww877cjqzrv2cmqw749z25mrwxvwpzhnv9wqqp6rvvktdn95zv7  \
                --ca-checksum 04c030caba4abb19c8bf22a3e85af958c264e3944bf4a48762b2d4e813394a7a \
                --etcd --controlplane --worker
