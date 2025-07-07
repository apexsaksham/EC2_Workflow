




resource "aws_instance" "my_server" {
  ami           = "ami-0f918f7e67a3323f0" #this is ami
  instance_type = "t2.micro"

  tags = {
    Name = "My_web_ pr_server"                     # this is server name

  }

}