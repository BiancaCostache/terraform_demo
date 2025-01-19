# Specify the provider and access detailss

provider "aws" {
  
}

# Create an S3 bucket
resource "aws_s3_bucket" "udabucket" {
  bucket = "cicd-terraform-demo-bucket20213bc"

  tags = {
    Name        = "CICD test bucket"
    Environment = "Dev"
  }
}

# Create an EC2 instance
resource "aws_instance" "ec2_instance" {
  ami           = "ami-0df8c184d5f6ae949"
  instance_type = "t2.micro"

  tags = {
    Name = "CICD test instance"
  }
}
