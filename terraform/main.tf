provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "miner" {
  instance_type = "p2.xlarge"
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  key_name = "${var.key_name}"

  root_block_device {
    volume_size = "100"
  }

  count = 1
}
