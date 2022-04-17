resource "aws_security_group" "first-sg" {
  name        = "first_sg"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "TLS from any"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "first_sg"
  }
}

resource "aws_security_group" "sec-sg" {
  name        = "sec_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups = [aws_security_group.first-sg.id] ## making source is security group of the bastion host
    cidr_blocks = [module.network.vpc_cidr]
    
  }

  ingress {
    description      = "port 3000"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
  }

 

  tags = {
    Name = "sec_sg"
  }
}


resource "aws_security_group" "redis-sg" {
  name        = "redis-sg"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "traffic from port 6379"
    from_port        = 6379
    to_port          = 6379
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "redis_sg"
  }
}

## add rds security group onlt to open port 3306 
## and also inbound the bastion host security group

resource "aws_security_group" "rds-sg" {
  name        = "rds_sg"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "port 3306"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
    security_groups = [aws_security_group.first-sg.id] 

  }

  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds_sg"
  }
}