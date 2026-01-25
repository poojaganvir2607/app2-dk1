{{/*
Expand the name of the chart.
*/}}
{{- define "myapp.name" -}}
{{- .Chart.Name }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "myapp.fullname" -}}
{{ .Release.Name}}-{{ .Chart.Name }}
{{- end }}
{{- define "myapp.labels" -}}
app: {{ include "myapp.name" }}
{{- end }}


