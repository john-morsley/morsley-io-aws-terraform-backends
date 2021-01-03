# Terraform - Backend Resources on AWS for morsley.io Projects

The required resources to store Terraform backends on AWS.

Hashicorp - Terraform - Backends: https://www.terraform.io/docs/backends/index.html

Hashicorp - Terraform - Backends - Standard Backends - S3: https://www.terraform.io/docs/backends/types/s3.html

So...

We need an S3 bucket and a DynamoDB.

Usage: terraform.tf

```terraform
terraform {

  required_version = ">= 0.14"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.22.0"
    }

    [OTHER PROVIDERS]
    
  }

  # Requires the following environment variables:

  # AWS_ACCESS_KEY_ID
  # AWS_SECRET_ACCESS_KEY

  backend "s3" {
    bucket         = "morsley-io-terraform-backend-states"
    key            = "[KEY]" # i.e. modules/ec2/examples/simple
    region         = "eu-west-2"
    dynamodb_table = "morsley-io-terraform-state-locks"
    encrypt        = true
  }

}
```