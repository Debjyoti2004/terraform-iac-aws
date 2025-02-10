# Create a bucket
resource "aws_s3_bucket" "project-bucket" {
  bucket = "${var.Environment}-debjyoti2343-${count.index+1}"
  count = var.bucket_count
  tags = {
    Name = "${var.Environment}-My bucket-${count.index+1}"
    Environment = var.Environment
  }
}