output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "ec2_public_ip" {
  description = "EC2 public IP — open this in browser"
  value       = aws_instance.main.public_ip
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.main.id
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.main.bucket
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.main.id
}

output "website_url" {
  description = "Open this URL to see your deployed web page"
  value       = "http://${aws_instance.main.public_ip}"
}