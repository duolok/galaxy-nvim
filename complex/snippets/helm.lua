local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s("svc", fmt([[
apiVersion: v1
kind: Service
metadata:
  name: {}
spec:
  selector:
    app: {}
  ports:
    - port: {}
      targetPort: {}
      protocol: TCP
  type: {}
]], { i(1, "my-service"), i(2, "my-app"), i(3, "80"), i(4, "8080"), i(5, "ClusterIP") })),

	s("deploy", fmt([[
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {}
spec:
  replicas: {}
  selector:
    matchLabels:
      app: {}
  template:
    metadata:
      labels:
        app: {}
    spec:
      containers:
        - name: {}
          image: {}
          ports:
            - containerPort: {}
]], { i(1, "my-deploy"), i(2, "1"), i(3, "my-app"), i(3), i(4, "main"), i(5, "nginx:latest"), i(6, "8080") })),

	s("pod", fmt([[
apiVersion: v1
kind: Pod
metadata:
  name: {}
  labels:
    app: {}
spec:
  containers:
    - name: {}
      image: {}
      ports:
        - containerPort: {}
]], { i(1, "my-pod"), i(2, "my-app"), i(3, "main"), i(4, "nginx:latest"), i(5, "8080") })),

	s("cm", fmt([[
apiVersion: v1
kind: ConfigMap
metadata:
  name: {}
data:
  {}: |
    {}
]], { i(1, "my-config"), i(2, "key"), i(3, "value") })),

	s("secret", fmt([[
apiVersion: v1
kind: Secret
metadata:
  name: {}
type: {}
stringData:
  {}: {}
]], { i(1, "my-secret"), i(2, "Opaque"), i(3, "key"), i(4, "value") })),

	s("pvc", fmt([[
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: {}
spec:
  accessModes:
    - {}
  resources:
    requests:
      storage: {}
  storageClassName: {}
]], { i(1, "my-pvc"), i(2, "ReadWriteOnce"), i(3, "1Gi"), i(4, "standard") })),

	s("ing", fmt([[
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: {}
spec:
  ingressClassName: {}
  rules:
    - host: {}
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: {}
                port:
                  number: {}
]], { i(1, "my-ingress"), i(2, "nginx"), i(3, "example.com"), i(4, "my-service"), i(5, "80") })),

	s("ns", fmt([[
apiVersion: v1
kind: Namespace
metadata:
  name: {}
]], { i(1, "my-namespace") })),

	s("sa", fmt([[
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {}
  namespace: {}
]], { i(1, "my-sa"), i(2, "default") })),

	s("hpa", fmt([[
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: {}
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: {}
  minReplicas: {}
  maxReplicas: {}
  metrics:
    - type: Resource
      resource:
        name: cpu
        target:
          type: Utilization
          averageUtilization: {}
]], { i(1, "my-hpa"), i(2, "my-deploy"), i(3, "1"), i(4, "10"), i(5, "80") })),

	s("sts", fmt([[
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: {}
spec:
  serviceName: {}
  replicas: {}
  selector:
    matchLabels:
      app: {}
  template:
    metadata:
      labels:
        app: {}
    spec:
      containers:
        - name: {}
          image: {}
]], { i(1, "my-sts"), i(2, "my-svc"), i(3, "1"), i(4, "my-app"), i(4), i(5, "main"), i(6, "nginx:latest") })),

	s("ds", fmt([[
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: {}
spec:
  selector:
    matchLabels:
      app: {}
  template:
    metadata:
      labels:
        app: {}
    spec:
      containers:
        - name: {}
          image: {}
]], { i(1, "my-ds"), i(2, "my-app"), i(2), i(3, "main"), i(4, "nginx:latest") })),

	s("job", fmt([[
apiVersion: batch/v1
kind: Job
metadata:
  name: {}
spec:
  template:
    spec:
      containers:
        - name: {}
          image: {}
          command: [{}]
      restartPolicy: OnFailure
]], { i(1, "my-job"), i(2, "main"), i(3, "busybox"), i(4, '"sh", "-c", "echo hello"') })),

	s("cron", fmt([[
apiVersion: batch/v1
kind: CronJob
metadata:
  name: {}
spec:
  schedule: "{}"
  jobTemplate:
    spec:
      template:
        spec:
          containers:
            - name: {}
              image: {}
          restartPolicy: OnFailure
]], { i(1, "my-cron"), i(2, "*/5 * * * *"), i(3, "main"), i(4, "busybox") })),
}
