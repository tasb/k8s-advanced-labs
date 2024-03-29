{{/*
Expand the name of the chart.
*/}}
{{- define "echo-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "echo-app.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "echo-app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "echo-app.webapp.labels" -}}
app: {{ .Release.Name }}
tier: front
{{- end }}

{{- define "echo-app.api.labels" -}}
app: {{ .Release.Name }}
tier: back
{{- end }}

{{- define "echo-app.db.labels" -}}
app: {{ .Release.Name }}
tier: db
{{- end }}

{{- define "echo-app.dbBackup.labels" -}}
app: {{ .Release.Name }}
tier: backup
{{- end }}
