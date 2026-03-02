terraform {
  backend "s3" {
    bucket         = "umer-demo-bucket-76yghji98u"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "umer-terraform-lock"
    encrypt        = true
  }
}