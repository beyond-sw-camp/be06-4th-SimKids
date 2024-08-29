echo "
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: frontend-ingress-v$1
  annotations:
    nginx.ingress.kubernetes.io/canary: $2
    nginx.ingress.kubernetes.io/canary-weight: $3
spec:
  ingressClassName: nginx
  rules:
    - http:
        paths:
          - path: /api
            pathType: Prefix
            backend:
              service:
                name: frontend-svc-v$1
                port:
                  number: 80
"