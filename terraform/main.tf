provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "miner" {
  instance_type = "g2.2xlarge"
  ami = "${lookup(var.aws_amis, var.aws_region)}"

  count = 1
}
