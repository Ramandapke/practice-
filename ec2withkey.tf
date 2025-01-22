
terraform {
  required_providers {
    aws = {
      
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_key_pair" "deployer" {
  key_name = "raman-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCqK0lnrkwKljwPpTefNpYjoxhKBj5cfT9e9+NoTit/TdyC2/Ofl6H3C+RCCvn+1EmVIHIon2IeET/ZrADLkeB/BirtdRyWBKzd9ynAgfqBVCMzpN/ljAA/9ggY5zC2ve42HKVNXOablvRmPZ6NxW1/WhiNhzKu8FYaxqlqxSc3Ml1EmGOnSUZcaaAKHkriwLKY6kTt7JUePEuzj6HaSxR8gTbs0rAHaC22Gh7RHuXW8ze4HR1ekycrqN4gfyyA4QfJsMj0XMuGC8BP7WrYQVnShH6vXHOy1ScQ+UUEelwus/YBNomzwnCwbxX9rKZDEh/dJpcTkFZHWM5kX3l3aKQltY8cbdif8UTXRTBL24qrTbjOnZ7ZqljpDM7r+zsWamL+dwWO6zSKNUKXnzp91qvS9h/Tgt0bhn4j8icuyPiRxj2PkIJLAypLllEf/JG55yEOQ4lWbPIsd7c8piwReibcmJSSpcl/r5jWFksXcPOqVtXuyYJS9c4bcoHzh6KmuO0= adharman\rdapke@INPHWN154287 "
}

resource "aws_instance" "web" {
  ami = "ami-046b5b8111c19b3ac"
  instance_type = "t2.micro"
  key_name = "raman-key"
}