output "Public_IP" {
  value = aws_instance.project-ec2[*].public_ip
}

output "Private_IP" {
  value = aws_instance.project-ec2[*].private_ip
}

output "key_name" {
  value = aws_key_pair.project-key[*].key_name
}

output "security_group" {
  value = aws_security_group.project-sg[*].name
}

output "ami_id" {
  value = var.ami-id
}

output "instance_type" {
  value = var.instance_type
}

output "bucket_name" {
  value = aws_s3_bucket.project-bucket[*].bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.project-bucket[*].arn
}

output "bucket_region" {
  value = aws_s3_bucket.project-bucket[*].region
}



