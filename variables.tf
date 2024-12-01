variable "tag_class" {
  type    = string
  default = "dsba6190"
}

variable "tag_student" {
  type    = string
  default = "ssharm68"
}


variable "tag_semester" {
  type    = string
  default = "fall2024"
}

variable "location" {
  description = "Location of Resource Group"
  type        = string
  default     = "eastus"

  validation {
    condition     = contains(["eastus"], lower(var.location))
    error_message = "Unsupported Azure Region specified."
  }
}


// Azure-Specific App Variables

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "student_name" {
  description = "Application Name"
  type        = string
  default     = "ssharm68"
}

variable "class_name" {
  description = "Application Name"
  type        = string
  default     = "dsba6190"
}