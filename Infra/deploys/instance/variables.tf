
variable "project" {
  type        = map(string)
  description = "Environment specific CIDR blocks"
  default = {
    "dev" = "pokcal",
  }
}

variable "ami" {
  description = "AMI"
  type        = string
  default     = "ami-06c39ed6b42908a36"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}