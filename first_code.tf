


provider "aws" {
 profile = "default"
 region = "us-west-2"
}

data "aws_ami" "ubuntu_server"{
 most_recent = true
 owners = ["099720109477"]

 filter {
  name = "name"
  values = ["ubuntu"]
 }
}

resource "aws_instance" "something" {

 ami = data.aws_ami.ubuntu_server.id
 instance_type = "t2.micro"
}
