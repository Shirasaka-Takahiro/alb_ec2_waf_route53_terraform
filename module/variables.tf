##General Config
variable "general_config" {
  type = map(any)
}
variable "regions" {
  type = map(any)
}

##Network
variable "vpc_cidr" {}
variable "availability_zones" {}
variable "public_subnets" {}
variable "private_subnets" {}
variable "public_subnet_ids" {}
variable "private_subnet_ids" {}

##EC2 Instance
variable "ami" {}
variable "instance_type" {}
variable "volume_type" {}
variable "volume_size" {}
variable "key_name" {}
variable "instance_id" {}
variable "public_key_path_web" {}

##Web ACL
variable "webacl_scope" {}

##Route53
variable "zone_name" {}
variable "zone_id" {}
variable "sub_domain_1" {}