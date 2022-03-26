variable "front_name" {
  description = "The name of the frontend application"
  default     = "pav-front"
}

variable "back_name" {
  description = "The name of the backend application"
  default     = "pav-back"
}

variable "front_repository" {
  description = "The repository of the frontend application"
  default     = "https://github.com/CorchoForce/pav-front"
}

variable "back_repository" {
  description = "The repository of the backend application"
  default     = "https://github.com/CorchoForce/pav-back"
}

variable "app_key" {
  description = "The app key of the application"
}

variable "email_key" {
  description = "The email key of the application"
}

variable "email_password" {
  description = "The email password of the application"
}

variable "mongo_password" {
  description = "The mongo password of the application"
}
variable "mongo_username" {
  description = "The mongo username of the application"
}

