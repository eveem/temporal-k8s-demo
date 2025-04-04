### Temporal

build temporal worker image
```
docker build -t temporal-worker:0.0.1 .
```

apply common component if using istio
- Gateway
- VirtualService
- DestinationRule
```
kubectl apply -f deployment/temporal-common.yml
```

apply temporal auto-setup contained 2 components
- Service
- Deployment
```
kubectl apply -f deployment/temporal-auto-setup-deployment.yml
```

apply temporal ui contained 2 components
- Service
- Deployment
```
kubectl apply -f deployment/temporal-ui-deployment.yml
```

apply temporal worker pod for testing
```
kubectl apply -f deployment/temporal-worker-pod.yml
```