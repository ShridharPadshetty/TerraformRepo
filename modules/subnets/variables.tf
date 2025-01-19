variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["16.0.1.0/24", "16.0.2.0/24"]
}

