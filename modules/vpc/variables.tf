variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "16.0.0.0/16"  # Replace with your desired CIDR block
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "my-terraform-vpc"
}

