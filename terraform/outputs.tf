output "address" {
  value = "Instances: ${element(aws_instance.miner.*.id, 0)}"
}
