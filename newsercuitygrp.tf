provider "aws"{
    region "eu-north-1"
}data "aws_vpc" "default"{
    default="true"
}
resource "aws_security_group" "web_sg" {
  name        = "web-server-sg"
  description = "Security group for web server"
  vpc_id      = data.aws_vpc.default.id  # Attach to default VPC

  # Allow SSH (Port 22) from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from all IPs (change for better security)
 
  }
   tags = {
    Name = "WebSecurityGroup"
  }
}

# Output Security Group ID
output "security_group_id" {
  value = aws_security_group.web_sg.id
}