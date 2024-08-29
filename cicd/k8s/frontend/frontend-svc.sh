echo "
apiVersion: v1
kind: Service
metadata:
  name: frontend-svc-v$1
spec:
  selector:
    app: frontend
    version: v$1
  ports:
    - port: 80
      protocol: TCP
      targetPort: 80
"