provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "module-instance" {
ami = "ami-09a9858973b288bdd"
instance_type = "t3.micro"
key_name = "stockholm"
security_groups = ["default"]
count=2

tags ={
    name ="my-aws-instance"

}
}