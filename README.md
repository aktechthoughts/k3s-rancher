

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





	   
