provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  cpu_options {
    core_count       = var.core_count
    threads_per_core = var.thread_count
  }

  tags = {
    Name = "rahul"
  }
}
