resource "aws_instance" "web" {
  ami           = "ami-0c4f7023847b90238"
  instance_type = var.instance_type
  subnet_id = module.network.lab-private-subnet-1
  vpc_security_group_ids = [aws_security_group.sec-sg.id]
  associate_public_ip_address = false
  key_name = aws_key_pair.public_key_pair.key_name  
    tags = {
    Name = "private-ec2"
  }
}
