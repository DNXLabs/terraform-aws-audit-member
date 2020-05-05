variable "name" {
  type        = string
  description = "Name of this account"
}

variable "email" {
  type        = string
  description = "Email to be used in services like Guardduty"
}

variable "master_account_id" {
  description = "Master account ID"
}

variable "guardduty" {
  default     = true
  description = "Enable/Disables guardduty"
}

variable "guardduty_detector_id" {
  description = "GuardDuty detector ID"
}
