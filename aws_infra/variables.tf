variable "Environment" {
  type = string
  description = "The environment to deploy to"
}

variable "ami-id" {
  type = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type = string
  description = "The instance type to use for the EC2 instance"
}

variable "instance_count" {
  type = number
  description = "The number of instances to deploy"
}

variable "public_key" {
  type = string
  description = "The key name to use for the EC2 instance"
}

variable "bucket_count" {
  type = number
  description = "The number of buckets to create"
}

