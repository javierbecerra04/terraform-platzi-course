provider "aws" {
    region="us-east-1"
}

resource "aws_kms_key" "backend_key" {
  description             = "KMS key for the backend bucket"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "javier-backend" {
    bucket = var.bucket_name
    tags = var.tags
    force_destroy = true
}

resource "aws_s3_bucket_acl" "backend_acl" {
    bucket = aws_s3_bucket.javier-backend.bucket
    acl = var.acl
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encrypt_conf" {
    bucket = aws_s3_bucket.javier-backend.bucket

    rule {
        apply_server_side_encryption_by_default {
          kms_master_key_id = aws_kms_key.backend_key.arn
          sse_algorithm = "aws:kms"
        }
    }  
}

output "arn" {
  value = aws_kms_key.backend_key.arn
}