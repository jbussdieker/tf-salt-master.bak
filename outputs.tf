output "salt_master_public_ip" {
    value = "${aws_instance.salt-master.public_ip}"
}
