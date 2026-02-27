{{- define "keycloak.labels.app" -}}
{{ .Release.Name }}-keycloak
{{- end -}}

{{- define "cams.labels.app" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "jtmgmt.labels.app" -}}
{{ .Release.Name }}-jtmgmt
{{- end -}}

{{- define "jauth.labels.app" -}}
{{ .Release.Name }}-jauth
{{- end -}}

{{- define "pytmgmt.labels.app" -}}
{{ .Release.Name }}-pymgmt
{{- end -}}

{{- define "agentregistry.labels.app" -}}
{{ .Release.Name }}-agentregistry
{{- end -}}

{{- define "camsapi.labels.app" -}}
{{ .Release.Name }}-cams-api
{{- end -}}

{{- define "agentregistryui.labels.app" -}}
{{ .Release.Name }}-agentregistry-ui
{{- end -}}

{{- define "traefik.labels.app" -}}
{{ .Release.Name }}-traefik
{{- end -}}

{{- define "nginx.labels.app" -}}
{{ .Release.Name }}-nginx
{{- end -}}

{{- define "litellm.labels.app" -}}
{{ .Release.Name }}-litellm
{{- end -}}

{{- define "controltower.labels.app" -}}
{{ .Release.Name }}-control-tower
{{- end -}}
