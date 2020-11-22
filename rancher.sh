
#!/bin/bash

docker run -d --restart=unless-stopped \
	-p 80:80 -p 443:443 \
	-v /tmp/rancher:/var/lib/rancher \
        --privileged \
	rancher/rancher:latest



