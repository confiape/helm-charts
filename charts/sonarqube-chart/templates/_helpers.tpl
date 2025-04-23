{{- define "sonarqube.fullname" -}}
{{- printf "%s-sonarqube" .Release.Name -}}
{{- end -}}

{{- define "sonarqube.labels" -}}
app.kubernetes.io/name: sonarqube
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}