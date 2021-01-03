/*
  _____ ____     
 / ____|___ \   
| (___   __) |
 \___ \ |__ < 
 ____) |___) | 
|_____/|____/ 
                                               
            */

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "terraform-backend-states" {

  bucket = "${var.domain_name}-terraform-backend-states"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

}