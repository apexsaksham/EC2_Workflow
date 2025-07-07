terraform {
  backend "s3" {
    bucket         = "ec2-backend-tf"      # your actual S3 bucket name
    key            = "ec2/terraform.tfstate"        # folder/file path in the bucket
    region         = "ap-south-1"
    
  }
}


provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_server" {
    ami = "ami-0f918f7e67a3323f0"            #this is ami
    instance_type = "t2.micro"

    tags = {
        Name = "My_PR_server"              # this is name
    }
  
}