resource "aws_instance" "app_machine" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.capstone_sg.id]
  key_name               = aws_key_pair.capstone_key.key_name

  tags = {
    Name = "App-Machine"
  }
}


resource "aws_instance" "tools_machine" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.public_subnet_2.id
  vpc_security_group_ids = [aws_security_group.capstone_sg.id]
  key_name               = aws_key_pair.capstone_key.key_name

  tags = {
    Name = "Tools-Machine"
  }
}