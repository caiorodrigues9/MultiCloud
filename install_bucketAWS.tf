resource "aws_s3_bucket" "bucket" {
    bucket = "terraform202211151"
    tags = {
        Name        = "Exercicio"
        Environment = "Terraform"
    }
}