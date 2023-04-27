variable "alarm_name" {
  description = "Nome para o alarme CloudWatch."
  type        = string
}

variable "alarm_description" {
  description = "Descrição do CloudWatch."
  type        = string
}

variable "namespace" {
  description = "Namespace para as métricas do CloudWatch."
  type        = string
}

variable "metric_name" {
  description = "Nome da métrica do CloudWatch."
  type        = string
}

variable "dimensions" {
  description = "Dimensões para as métricas do CloudWatch."
  type        = map(string)
}

variable "comparison_operator" {
  description = "O operador de comparação a ser usado para comparar a métrica com o valor definido no alarme."
  type        = string
}

variable "evaluation_periods" {
  description = "O número de períodos em que a métrica deve estar fora do intervalo definido no alarme antes que o alarme seja acionado."
  type        = number
}

variable "period" {
  description = "O período de tempo em que a métrica é avaliada."
  type        = number
}

variable "statistic" {
  description = "Estatísticas de avaliação das metricas do CloudWatch"
  type        = string
}

variable "threshold" {
  description = "O valor de referência para a métrica."
  type        = number
}

variable "actions_enabled" {
  type        = bool
  description = "Define se o alarme deve executar ações automáticas quando acionado."
}

variable "alarm_actions" {
  description = "Lista de ações a serem executadas quando o alarme for acionado."
  type        = list(string)
}

variable "ok_actions" {
  description = "Lista de ações a serem executadas quando o alarme voltar ao estado normal."
  type        = list(string)
}

variable "insufficient_data_actions" {
  description = "Lista de ações a serem executadas quando a métrica não tiver dados suficientes."
  type        = list(string)
}
