resource "aws_instance" "imported_instance" {
   ami           = "ami-09cf9fe5131a27038" # AMI інстанса
   instance_type = "t2.micro"              # тип інстанса
 }