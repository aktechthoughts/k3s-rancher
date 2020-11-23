

1.) Create docker-compose.yml.

2.) Install kubectl.

3.) Run docker-compose up

4.) Run kubectl commands.
	
	kubectl --kubeconfig kubeconfig.yaml get pods -A
	kubectl --kubeconfig kubeconfig.yaml get nodes
	kubectl --kubeconfig kubeconfig.yaml get cs   <component status>
	kubectl --kubeconfig kubeconfig.yaml run --restart=Never nginx --port 80 --image nginx  < add new pod >
	kubectl --kubeconfig kubeconfig.yaml get pods   < look at the pod started in last step>
	kubectl --kubeconfig kubeconfig.yaml expose pod/nginx --type=NodePort    < create a service of Type NodePort. >
	kubectl --kubeconfig kubeconfig.yaml get svc   <list services>
	docker-compose up --scale worker=3  < add new worker node >
	docker-compose down

5.) Added rancher.sh to execute a Rancher to manage kubernetes.


6.) Create and activate a namespace.

	kubectl  --kubeconfig kubeconfig.yaml create namespace ak-workspace
	kubectl  --kubeconfig kubeconfig.yaml get namespaces
	kubectl  --kubeconfig kubeconfig.yaml  config set-context --current --namespace=ak-workspace
	kubectl  --kubeconfig kubeconfig.yaml  config view --minify | grep namespace:
	


7.) Deploy a service

	kubectl --kubeconfig kubeconfig.yaml apply -f my-app-deploy.yml
	kubectl --kubeconfig kubeconfig.yaml get ingress,svc,pods


8.) Remove a service and deployment.
	
	kubectl --kubeconfig kubeconfig.yaml get all
	kubectl --kubeconfig kubeconfig.yaml delete deploy/simple-deployment svc/simple-service


