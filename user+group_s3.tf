provider "aws" {
               region = "us-east-2"
}
resource "aws_iam_group" "group" {
    name = "group1"
  
} 
resource "aws_iam_user" "user" {
    name = "idli"
  }
  resource "aws_s3_bucket" "newbucket"{
    name = "idli_ki_bucket1999"
    
    
  }

-----------------------------------------------------

provider "aws" {
               region = "eu-north-1"
}
resource "aws_iam_group" "group" {
    name = "group1"

}
resource "aws_iam_user" "user" {
    name = "sambhar"
  }
resource "aws_iam_user" "user1" {
    name = "idli"
}
  resource "aws_iam_group_membership" "groupmembership" {
    name = "groupmembership"
    group = "group1"
    users = ["sambhar","idli"]

  }
  resource "aws_s3_bucket" "newbucket"{
   bucket = "sambhar-ki-bucket1999"

  }
