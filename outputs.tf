output "aws_instance_ids" {
    description = "Instance IDs of created EC2 resources."
    value = "${aws_instance.aws_ec2_instance.*.id}"
}

output "aws_instance_private_ips" {
    description = "Private IPs of created EC2 resources."
    value = "${aws_instance.aws_ec2_instance.*.private_ip}"
}

output "aws_instance_public_ips" {
    description = "Public IPs of created EC2 resources."
    value = "${aws_instance.aws_ec2_instance.*.public_ip}"
}