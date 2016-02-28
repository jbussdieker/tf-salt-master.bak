output "salt_master_private_ip" {
    value = "${aws_instance.salt-master.private_ip}"
}

output "salt_master_public_ip" {
    value = "${aws_instance.salt-master.public_ip}"
}
