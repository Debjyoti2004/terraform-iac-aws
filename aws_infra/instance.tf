# Create a EC2 instance
resource "aws_instance" "project-ec2" {
  count         = var.instance_count
  ami           = var.ami-id
  instance_type = var.instance_type
  security_groups = [aws_security_group.project-sg.name]
  tags = {
    Name = "${var.Environment}-project-ec2"
  }
}

# Create a default VPC
resource "aws_default_vpc" "default-vpc" {
  
}

# Create a security group for the EC2 instance
resource "aws_security_group" "project-sg" {
  name        = "${var.Environment}-project-sg"
  description = "My security group"
  vpc_id      = aws_default_vpc.default-vpc.id #interpolation 

  ingress {
    description = "SSH"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create a key pair for the EC2 instance
resource "aws_key_pair" "project-key" {
  key_name   = "${var.Environment}-project-key"
  public_key = var.public_key
}

