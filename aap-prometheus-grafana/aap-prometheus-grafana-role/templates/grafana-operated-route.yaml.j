kind: Route
apiVersion: route.openshift.io/v1
metadata:
  name: grafana
  namespace: {{ ansible_namespace }}
  labels:
    operated-prometheus: 'true'
spec:
  host: grafana-operated-grafana-operator.{{ domain }}
  to:
    kind: Service
    name: grafana-operated
    weight: 100
  port:
    targetPort: grafana


