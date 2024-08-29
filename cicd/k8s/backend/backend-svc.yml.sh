echo "
apiVersion: v1
kind: Service
metadata:
  name: backend-svc-v$1

spec:
  selector:
    type: backend
    ver: v$1
  ports:
    - port: 8080
      protocol: TCP
      targetPort: 8080
"