
resource "random_integer" "bucket_pu_number" {
   min = 1
   max = 10000
}
resource "aws_s3_bucket" "sample_private_bucket" {
  bucket = "${var.sample_private_bucket}.${random_integer.bucket_pu_number.result}"
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "private"
  }
}

resource "aws_s3_bucket" "sample_public_bucket" {
  bucket = "${var.sample_public_bucket}.${random_integer.bucket_pu_number.result}"
  acl    = "public-read"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "My bucket"
    Environment = "public"
  }
}


