resource "aws_s3_bucket" "s3buck" {
  bucket = "${var.env_tag}-${var.buck_name}"

  tags = {
    Name        = "${var.env_tag}-${var.buck_name}"
    Environment = "${var.env_tag}"
  }
}