{{- define "project2-api.name" -}}
project2-api
{{- end -}}

{{- define "project2-api.fullname" -}}
{{- include "project2-api.name" . -}}
{{- end -}}
