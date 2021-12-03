{{/*
Expand the name of the chart.
*/}}
{{- define "java.readiness" -}}
httpGet:
  path: /actuator/health
  port: {{ .Values.backend.containerPort | default 8080 }}
  scheme: http
{{- end -}}
