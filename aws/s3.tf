resource "aws_s3_bucket" "skytech" {
  bucket = "skytech-bucket"

  tags = {
    Name        = "My bucket skytech"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_website_configuration" "configuration_website" {
  bucket = aws_s3_bucket.skytech.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}