terraform {
  backend "s3" {
    bucket = "ec2-backend-tf"        # your actual S3 bucket name
    key    = "ec2/terraform.tfstate" # folder/file path in the bucket
    region = "ap-south-1"

  }
}