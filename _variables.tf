variable "guardduty" {
  default     = true
  description = "Enable/Disables guardduty"
}

variable "name" {
  type        = string
  description = "Name of this account"
}

variable "email" {
  type        = string
  description = "Email to be used in services like Guardduty"
}
