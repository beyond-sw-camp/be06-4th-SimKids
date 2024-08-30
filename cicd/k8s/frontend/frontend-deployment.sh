ehco "apiVersion: apps/v1
kind: Deployment
metadata:
  name: frontend-deployment-v$1
  labels:
    app: frontend
    version: v$1
spec:
  replicas: 2
  selector:
    matchLabels:
      app: frontend
      version: v$1
  template:
    metadata:
      labels:
        app: frontend
        version: v$1
    spec:
      containers:
        - name: frontend
          image: simkids/frontend:$1
          ports:
            - containerPort: 80
"