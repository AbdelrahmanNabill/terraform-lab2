resource "aws_key_pair" "ssh-key" {
  key_name   = "iti-key"
  public_key = file(var.public_key_location)
}