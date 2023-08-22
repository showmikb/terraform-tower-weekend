#AWS INSTANCE

resource "aws_instance" "myec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags = {
    Name = "HelloWorld"
  }
}