output "address" {
  value = "\nid: ${element(aws_instance.miner.*.id, 0)}\nip: ${element(aws_instance.miner.*.public_ip, 0)}"
}
