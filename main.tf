# For Dev Environment
module "dev-infra" {
  source = "./aws_infra"
  Environment = "dev" 
  ami-id = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  public_key = file("./terrakey.pub")
  instance_count = 2
  bucket_count = 1
}

# For Stage Environment
module "stage-infra" {
  source = "./aws_infra"
  Environment = "stage"
  ami-id = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  instance_count = 4
  public_key = file("./terrakey.pub")
  bucket_count = 2
}

# For Production Environment
module "prod-infra" {
  source = "./aws_infra"
  Environment = "prod"
  ami-id = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  instance_count = 7
  public_key = file("./terrakey.pub")
  bucket_count = 3
}
