/*
 _____                                    _____  ____  
|  __ \                                  |  __ \|  _ \ 
| |  | |_   _ _ __   __ _ _ __ ___   ___ | |  | | |_) |
| |  | | | | | '_ \ / _` | '_ ` _ \ / _ \| |  | |  _ < 
| |__| | |_| | | | | (_| | | | | | | (_) | |__| | |_) |
|_____/ \__, |_| |_|\__,_|_| |_| |_|\___/|_____/|____/ 
         __/ |                                         
        |___/                                        */                                          

resource "aws_dynamodb_table" "terraform-state-locks" {

  name           = "${var.domain_name}-terraform-state-locks"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}