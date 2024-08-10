provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu1" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t3.micro"
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  tags = {
    Name = "rahul"
  }
}
