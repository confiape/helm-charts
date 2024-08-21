# Confiape App Helm Chart

Este chart de Helm despliega una aplicación en Kubernetes con configuraciones flexibles y escalables. A continuación, se detallan los archivos y configuraciones utilizadas.

## Estructura de Archivos

- **_helpers.tpl**: Contiene funciones auxiliares para construir nombres, etiquetas, y otras configuraciones comunes que se usan en los diferentes manifiestos.
- **deployment.yaml**: Define un `Deployment` de Kubernetes para la aplicación, incluyendo configuraciones de réplicas, contenedores, probes, y más.
- **hpa.yaml**: Configura un `HorizontalPodAutoscaler` (HPA) para escalar dinámicamente la aplicación basada en la utilización de CPU o memoria.
- **ingress.yaml**: Proporciona configuraciones para un `Ingress`, lo que permite la exposición de la aplicación a través de HTTP/HTTPS.
- **service.yaml**: Define un `Service` de Kubernetes para exponer los pods de la aplicación.
- **serviceaccount.yaml**: Define un `ServiceAccount` asociado con los pods, permitiendo el control de permisos y accesos.
- **notes.txt**: Proporciona instrucciones útiles para obtener la URL de la aplicación y otros comandos útiles.

## Valores Configurables

El archivo `values.yaml` permite configurar varios aspectos de la implementación. Algunos de los parámetros más importantes incluyen:

- **replicaCount**: Número de réplicas del Deployment.
- **image**: Configuración de la imagen Docker, incluyendo el repositorio, tag y políticas de pull.
- **serviceAccount**: Configuraciones del Service Account, incluyendo si se debe crear uno nuevo y sus anotaciones.
- **service**: Tipo y puerto del Service de Kubernetes (`ClusterIP`, `NodePort`, `LoadBalancer`).
- **ingress**: Configuraciones del Ingress, incluyendo hosts, anotaciones, y TLS.
- **resources**: Configuraciones de recursos para los contenedores, como límites y solicitudes de CPU/memoria.
- **livenessProbe** y **readinessProbe**: Configuraciones de probes para monitorear la salud de los contenedores.
- **autoscaling**: Configuración del autoscaling, incluyendo la cantidad mínima y máxima de réplicas y el porcentaje de utilización de CPU/memoria objetivo.
- **volumes** y **volumeMounts**: Configuraciones adicionales de volúmenes y montajes de volúmenes en los contenedores.
- **nodeSelector**, **tolerations**, y **affinity**: Configuraciones para definir afinidades, toleraciones y selección de nodos para los pods.

## Uso

Para instalar este chart con el nombre `my-release`:

```sh
helm install my-release confiape-app
