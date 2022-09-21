resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = var.vm_ami
  instance_type               = var.vm_instance_type
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = module.network.subnet_id
  vpc_security_group_ids      = [module.network.security_group_id]
  associate_public_ip_address = true

  tags = {
    "Name" = var.aws_vm_name
  }
}