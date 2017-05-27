variable "aws_region" {
  description = "The AWS region"
  default = "ap-southeast-2"
}

variable "key_name" {
  description = "The Key Pair"
}

variable "aws_amis" {
  default = {
    "ap-northeast-1" = "ami-1de1df7a"
    "ap-southeast-1" = "ami-93ef68f0"
    "ap-southeast-2" = "ami-1e01147d"
    "eu-central-1" = "ami-a74c95c8"
    "eu-west-1" = "ami-6c101b0a"
    "sa-east-1" = "ami-4bd8b727"
    "us-east-1" = "ami-20631a36"
    "us-west-1" = "ami-9fe6c7ff"
    "us-west-2" = "ami-45224425"
  }
}
