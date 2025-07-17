variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of CIDRs for public subnets"
}

variable "azs" {
  type        = list(string)
  description = "List of Availability Zones"
}

variable "project" {
  type        = string
  description = "Name of the project"
}
