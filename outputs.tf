/*
  ____        _               _       
 / __ \      | |             | |      
| |  | |_   _| |_ _ __  _   _| |_ ___ 
| |  | | | | | __| '_ \| | | | __/ __|
| |__| | |_| | |_| |_) | |_| | |_\__ \
 \____/ \__,_|\__| .__/ \__,_|\__|___/
                 | |                  
                 |_|                */

output "s3_arn" {
  value = aws_s3_bucket.terraform-backend-states.arn
}

output "dynamodb_arn" {
  value = aws_dynamodb_table.terraform-state-locks.arn
}