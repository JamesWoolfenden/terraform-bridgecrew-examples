variable "conditions" {
  description = "Simple policy definition"
}

variable "cis_aws_v12" {
  default = []
}

variable "guidelines" {
  type = string
}

variable "title" {
  type = string
}

variable "severity" {
  type = string
}

variable "category" {
  type = string
}

variable "cloud_provider" {
  type = string
}

variable "frameworks" {
  type=list
}