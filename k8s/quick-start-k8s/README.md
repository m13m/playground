K8s node types:

1. Master 
2. Worker

Master nodes host the control plane and Nodes are where you run user application.

Terms:

1. Control plane (fancy term for brain of the cluster)

Control plane formed of following services which runs on top of Masters.
* API Server
* Scheduler
* Store
* Cloud Controller

etc.

2. Nodes
* Kubelet
* Container runtime
