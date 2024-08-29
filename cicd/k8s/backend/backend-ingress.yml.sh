echo "
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: backend-ingress-v$1

  annotations:
    nginx.ingress.kubernetes.io/canary: "false"
    nginx.ingress.kubernetes.io/canary-weight: "10"
#    nginx.ingress.kubernetes.io/canary-by-header: "canary-version"
#    nginx.ingress.kubernetes.io/canary-by-header-value: "new"

spec:
  ingressClassName: nginx
  rules:
    - http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: backend-svc-v$1
                port:
                  number: 8080
"