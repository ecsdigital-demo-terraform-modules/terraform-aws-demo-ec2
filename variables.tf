variable "aws_ami_id" {
  description = "AMI ID EC2 instances will be created from."
  type        = "string"
}

variable "aws_ec2_instance_count" {
  description = "Number of EC2 instances to create."
  type        = "string"
  default     = "1"
}

variable "aws_ec2_instance_type" {
  description = "Instance type of EC2 instance."
  type        = "string"
}

variable "aws_ec2_subnet_id" {
  description = "Subnet ID for EC2 instance."
  type        = "string"
}

variable "aws_ec2_sg_id" {
  description = "Security Group ID for EC2 instance."
  type        = "string"
}

variable "aws_ec2_key_name" {
  description = "Name of aws keypair for EC2 instance."
  type        = "string"
}

variable "aws_ec2_volume_size" {
    type = "string"
    description = "EBS block size of EC2 instance"
}

variable "owner_tag" {
    type = "string"
    description = "Value that will be tagged as OWNER, on all AWS resources"
}

variable "environment_tag" {
    type = "string"
    description = "Value that will be tagged as ENVIRONMENT, on all AWS resources"
}

variable "prefix_tag" {
    type = "string"
    description = "Prefix string added to Name tag"
}


