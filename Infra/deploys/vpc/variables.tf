variable "cidr_block" {
  type        = map(string)
  description = "Environment specific CIDR blocks"
  default = {
    "dev" = "10.4.0.0/16",
  }
}

variable "project" {
  type        = map(string)
  description = "Environment specific CIDR blocks"
  default = {
    "dev" = "pokcal",
  }
}
