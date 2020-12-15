#      _______                   __                     
#     |__   __|                 / _|                    
#        | | ___ _ __ _ __ __ _| |_ ___  _ __ _ __ ___  
#        | |/ _ \ '__| '__/ _` |  _/ _ \| '__| '_ ` _ \ 
#        | |  __/ |  | | | (_| | || (_) | |  | | | | | |
#        |_|\___|_|  |_|  \__,_|_| \___/|_|  |_| |_| |_|

terraform {

  required_version = ">= 0.14" # https://github.com/hashicorp/terraform/releases

  required_providers {
    aws = {
      source  = "hashicorp/aws" # https://registry.terraform.io/providers/hashicorp/aws/
      version = "~> 3.0"
    }
  }

}