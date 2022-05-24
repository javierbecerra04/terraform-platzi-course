terraform {
  backend "s3" {
    bucket = "javier-backend-bucket"
    key    = "dev"
    region = "us-east-1"
    encrypt = true
    kms_key_id = "arn:aws:kms:us-east-1:846480914935:key/bf3872b3-e22a-433d-ac18-a01dcb91f71e"
  }
}
