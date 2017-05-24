variable "aws_region" {
  description = "The AWS region"
  default = "ap-southeast-2"
}

variable "aws_amis" {
  default = {
    "ap-northeast-1" = "ami-936d9d93"
    "ap-southeast-1" = "ami-96f1c1c4"
    "ap-southeast-2" = "ami-69631053"
    "eu-central-1" = "ami-accff2b1"
    "eu-west-1" = "ami-47a23a30"
    "sa-east-1" = "ami-4d883350"
    "us-east-1" = "ami-d05e75b8"
    "us-west-1" = "ami-df6a8b9b"
    "us-west-2" = "ami-5189a661"
  }
}
