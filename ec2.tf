resource "aws_instance" "web" {
  ami           = "ami-03ededff12e34e59e"
  instance_type = var.instance_type
  subnet_id = module.network.lab-private-subnet-1
  vpc_security_group_ids = [aws_security_group.sec-sg.id]
  associate_public_ip_address = false
  key_name = aws_key_pair.ssh-key.key_name
  tags = {
    Name = "private-ec2"
  }
}