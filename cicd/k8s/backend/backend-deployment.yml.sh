echo "
apiVersion: apps/v1
kind: Deployment
metadata:
  name: backend-deployment-$1
spec:
  selector:
    matchLabels:
      type: backend
      ver: v$1
  replicas: 2
  strategy:
    type: RollingUpdate
  minReadySeconds: 10
  template:
    metadata:
      labels:
        type: backend
        ver: v$1
    spec:
      containers:
        - name: backend
          image: simkids/backend:$1
          readinessProbe:
            httpGet:
              path: /test
              port: 8080
            initialDelaySeconds: 20
            periodSeconds: 10
            successThreshold: 3
          livenessProbe:
            httpGet:
              path: /test
              port: 8080
            initialDelaySeconds: 20
            periodSeconds: 10
      terminationGracePeriodSeconds: 0
"