output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.main[*].id
}

