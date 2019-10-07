# AWS EC2

## Introduction

Use this module to easily create any number of EC2 resources of your choosing in AWS.

## Resources Created

* EC2 Instance

## How to reference

In your terraform script:

```
module "ec2_instances" {
  source = "github.com/ecsdigital-demo-terraform-modules/terraform-aws-demo-ec2"

  # VARIABLE DEFINITION
}
```

## Notes


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_ami\_id | AMI ID EC2 instances will be created from. | string | n/a | yes |
| aws\_ec2\_instance\_count | Number of EC2 instances to create. | string | `"1"` | no |
| aws\_ec2\_instance\_type | Instance type of EC2 instance. | string | n/a | yes |
| aws\_ec2\_key\_name | Name of aws keypair for EC2 instance. | string | n/a | yes |
| aws\_ec2\_sg\_id | Security Group ID for EC2 instance. | string | n/a | yes |
| aws\_ec2\_subnet\_id | Subnet ID for EC2 instance. | string | n/a | yes |
| aws\_ec2\_volume\_size | EBS block size of EC2 instance | string | n/a | yes |
| environment\_tag | Value that will be tagged as ENVIRONMENT, on all AWS resources | string | n/a | yes |
| owner\_tag | Value that will be tagged as OWNER, on all AWS resources | string | n/a | yes |
| prefix\_tag | Prefix string added to Name tag | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| aws\_instance\_ids | Instance IDs of created EC2 resources. |
| aws\_instance\_private\_ips | Private IPs of created EC2 resources. |
| aws\_instance\_public\_ips | Public IPs of created EC2 resources. |
