variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "pok-cal"

}

variable "subnet_id" {
  description = "Subnets id"
  type        = string
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

variable "vpc_id" {
  description = "vpc id"
  type        = string
}
