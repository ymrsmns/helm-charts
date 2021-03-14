# Version-checker

[Version-checker](https://github.com/jetstack/version-checker)  is a Kubernetes utility for observing the current versions of images running in the cluster, as well as the latest available upstream. These checks get exposed as Prometheus metrics to be viewed on a dashboard, or soft alert cluster operators.

[Fork chart](https://github.com/jetstack/version-checker/tree/master/deploy/charts/version-checker) jetstack

Current chart version is `0.0.2`

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| acr.username | string | `""` | Azure Container Registry |
| acr.password | string | `""` | Azure Container Registry |
| acr.refreshToken | string | `""` | Azure Container Registry |
| affinity | object | `{}` | Kubernetes affinity resource. |
| app.name | string | `"version-checker"` | Application name: Can be consistent between tracks. (required) |
| app.version | string | `"v0.2.1"` | Application version: Unique tag for this release. (required) |
| docker.username | string | `""` | Docker Container Registry |
| docker.password | string | `""` | Docker Container Registry |
| docker.token | string | `""` | Docker Container Registry |
| ecr.accessKeyID | string | `""` | Amazon Elastic Container Registry |
| ecr.secretAccessKey | string | `""` | Amazon Elastic Container Registry |
| ecr.sessionToken | string | `""` | Amazon Elastic Container Registry |
| env | object | `{}` | Environment variables for the application. |
| gcr.token | string | `""` | Google Container Registry |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/jetstack/version-checker"` | Docker image repository. |
| image.tag | string | `"v0.2.1"` | Docker image tag. |
| imagePullSecrets | list | `[]` | Defines secrets to use for pulling docker images. |
| livenessProbe | object | `{"httpGet":{"path":"/metrics","port":"8080"}}` | Customize the livenessProbe. |
| nodeSelector | object | `{}` | Kubernetes node selectors for Deployment resources. |
| prometheus.enabled | bool | `false`  | Use Prometheus Operator |
| quay.token | string | `""` | Quay Container Registry |
| readinessProbe | object | `{}` | Customize the readiness probe. |
| replicaCount | int | `1` | Replica count for deployments. |
| resources | object | `{}` | Kubernetes resources for Deployment resources. |
| secret | string | `nil` | If defined will pull all secrets from this resource using envFrom. |
| selfhosted.host | string | `""` | Selfhosted |
| selfhosted.username | string | `""` | Selfhosted |
| selfhosted.password | string | `""` | Selfhosted |
| selfhosted.token | string | `""` | Selfhosted |
| service.enabled | bool | `true` | Enable service resource. |
| service.port | int | `8080` | Kubernetes service port. |
| service.type | string | `"ClusterIP"` | Kubernetes service type. |
| serviceMonitor.enabled | bool | `false`  | Create Service Monitor |
| tolerations | list | `[]` | Kubernetes tolerations for Deployment resources. |
