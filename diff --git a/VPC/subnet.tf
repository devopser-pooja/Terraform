provider "aws"{
    region="eu-north-1"

}
 data "aws_vpc" "default"{
default= "true"
 }

 variable "subnet_id" {
  default = "subnet-07188b17a9c30bdae"  
}
data "aws_security_group" "default" {
  filter {
    name   = "group-name"
    values = ["default"]
  }
  vpc_id = data.aws_vpc.default.id
}
 data "aws_subnet" "selected" {
  id = var.subnet_id
}
 resource "aws_instance" "instance1"{
    ami="ami-08b1d20c6a69a7100"
    instance_type="t3.micro"
    key_name="stockholm"
    subnet_id    = data.aws_subnet.selected.id
    security_groups=[data.aws_security_group.default.id]
                                                                                                                                                     1,15          Top
     tags ={
        name ="Instance12"
     }
 }


