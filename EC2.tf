resource "aws_instance" "private_ec2" {
  count         = 2
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.private[count.index].id

  tags = {
    Name = "private-ec2-${count.index}"
  }
}