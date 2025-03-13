terraform {
  backend "s3" {
    bucket         = "mytestbucketprod25"  # Name of your S3 bucket
    key            = "terraform.tfstate"  # Path to store tfstate
    region         = "ap-southeast-2"  # S3 bucket region
    encrypt        = true  # Enable encryption of the tfstate file
    #dynamodb_table = "tfstate-lock-table"  # DynamoDB table for state locking
    acl            = "private"  # Set S3 ACL for security
  }
}
provider "aws" {
  region = "ap-southeast-2"

}

resource "aws_instance" "app_server" {
  ami           = "ami-09e143e99e8fa74f9"
  instance_type = "t2.micro"

  tags = {
    Name = "arjun"
  }
}
