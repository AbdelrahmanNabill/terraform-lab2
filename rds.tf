# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   max_allocated_storage = 20
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t2.micro"
#   username             = "abdelrahman"
#   password             = "abdo1234"
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
#   availability_zone = var.avail_zone[0]
#   identifier = "abdo-nabil-db"
#   db_name = "iti_db"
#   db_subnet_group_name = aws_db_subnet_group.rds_group.id
# }

# resource "aws_db_subnet_group" "rds_group" {
#   name       = "db_sub_group"
#   subnet_ids = [module.network.lab-private-subnet-1, module.network.sec-private-subnet-2]

#   tags = {
#     Name = "My_rds_DB_subnet_group"
#   }
# }