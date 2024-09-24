variable "CLIENT_ID" {
  description = "Client id"
  type        = string
}

variable "CLIENT_SECRET" {
  description = "Client secret"
  type        = string
}

variable "MAX_CALL_CAPACITY" {
  type        = number
  description = "maximum call capacity for each user"
  default     = 1
}

variable "MAX_CALLBACK_CAPACITY" {
  type        = number
  description = "maximum callback capacity for each user"
  default     = 1
}

variable "MAX_CHAT_CAPACITY" {
  type        = number
  description = "maximum chat capacity for each user"
  default     = 4
}

variable "MAX_EMAIL_CAPACITY" {
  type        = number
  description = "maximum email capacity for each user"
  default     = 4
}

variable "MAX_MSG_CAPACITY" {
  type        = number
  description = "maximum message capacity for each user"
  default     = 4
}

variable "DIVISION_ID" {
  description = "Division Id"
  type        = string
}

variable "WHISPER_PROMPT_ID" {
  description = "Whisper prompt id"
  type        = string
}

variable "ROUTE_ID" {
  description = "Route id"
  type        = string
}

variable "MEMBER_GROUP_ID" {
  description = "Member group id"
  type        = string
}