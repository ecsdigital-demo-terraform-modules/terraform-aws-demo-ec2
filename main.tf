resource "aws_instance" "aws_ec2_instance" {
  ami                    = "${var.aws_ami_id}"
  count                  = "${var.aws_ec2_instance_count}"
  instance_type          = "${var.aws_ec2_instance_type}"
  subnet_id              = "${var.aws_ec2_subnet_id}"
  vpc_security_group_ids = ["${var.aws_ec2_sg_id}"]
  key_name               = "${var.aws_ec2_key_name}"

  root_block_device {
    volume_size = "${var.aws_ec2_volume_size}"  
  }

  tags = {
    Name = "${var.prefix_tag}_${var.environment_tag}_${count.index + 1}"
    Owner = "${var.owner_tag}"
    Environment = "${var.environment_tag}"
  }
}