

###  Create Namespace
```t
# List Namespaces
kubectl get ns 

# Craete Namespace
kubectl create namespace <namespace-name>
kubectl create namespace dev

# List Namespaces
kubectl get ns 
```
###  Deploy All k8s Objects
```t
# Deploy All k8s Objects
kubectl apply -f 01-kube-manifests-imperative/ -n dev

# List Namespaces
kubectl get ns

# List Deployments from dev Namespace
kubectl get deploy -n dev

# List Pods from dev Namespace
kubectl get pods -n dev

# List Services from dev Namespace
kubectl get svc -n dev

# List all objects from dev Namespaces
kubectl get all -n dev

# Access Application
http://<LB-Service-External-IP>/
```

##  Create Stag Namespace

### Step-03-01: Namespace Kubernetes YAML Manifest
- **File Name:** 00-kubernetes-namespace.yaml
```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: Stag
```

###  Update Namespace in Deployment and Service YAML Manifest
- We are going to update the `namespace: qa` in `metadata` section of Deployment and Service
```yaml
# Deployment YAML Manifest
apiVersion: apps/v1
kind: Deployment 
metadata: 
  name: myapp1-deployment
  namespace: qa
spec: 

# Service YAML Manifest
apiVersion: v1
kind: Service 
metadata:
  name: myapp1-lb-service
  namespace: qa
spec:
```

### Step-03-03: Deploy Kubernetes Manifests
```t
# Deploy Kubernetes Manifests
kubectl apply -f 02-kube-manifests-declarative

# List Namespaces
kubectl get ns

# List Deployments from qa Namespace
kubectl get deploy -n qa

# List Pods from qa Namespace
kubectl get pods -n qa

# List Services from qa Namespace
kubectl get svc -n qa

# List all objects from qa Namespaces
kubectl get all -n qa

# Access Application
http://<LB-Service-External-IP>/
```

## Clean-Up Resources
- If we delete Namespace, all resources associated with namespace will get deleted.
```t
# Delete dev Namespace
kubectl delete ns dev

# List Namespaces
kubectl get ns
Observation:
1. dev namespace should  not be present

# Verify Pods from dev Namespace
kubectl get pods -n dev
Observation: We should not find any pods because namespace itself doesnt exists

# Delete qa Namespace Resources (only)
kubectl delete -f 02-kube-manifests-declarative

# List Namespaces
kubectl get ns

# Delete qa Namespace
kubectl delete ns qa

# List Namespaces
kubectl get ns```

