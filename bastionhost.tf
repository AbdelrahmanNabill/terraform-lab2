resource "aws_instance" "bastion" {
  ami           = "ami-0c4f7023847b90238"
  instance_type = var.instance_type
  subnet_id = module.network.lab-public-subnet-1
  vpc_security_group_ids = [aws_security_group.first-sg.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.public_key_pair.key_name
    
  tags = {
    Name = "bastion-host"
  }

provisioner "local-exec" {
    command = "echo ${self.public_ip} > bastion_host_ip"
}

}
