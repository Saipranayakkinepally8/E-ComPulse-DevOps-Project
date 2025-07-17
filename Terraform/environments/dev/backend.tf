terraform {
  backend "s3" {
    bucket         = "ecompulse-tf-state"       # Replace with your bucket name
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ecompulse-tf-lock"
    encrypt        = true
  }
}
