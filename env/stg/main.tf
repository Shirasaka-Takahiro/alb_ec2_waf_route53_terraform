provider "aws" {
  profile = "terraform-user"
  region  = var.regions["tokyo"]
}

terraform {
  required_version = "~> 1.3.6"
  #backend "s3" {
  #  bucket  = "example-prod-tfstate-bucket"
  #  region  = "ap-northeast-1"
  #  key     = "prod.tfstate"
  #  profile = "terraform-user"
  #}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
  }
}

module "stg" {
  source = "../../module"

  general_config      = var.general_config
  regions             = var.regions
  availability_zones  = var.availability_zones
  vpc_cidr            = var.vpc_cidr
  public_subnets      = var.public_subnets
  private_subnets     = var.private_subnets
  public_subnet_ids   = module.stg.public_subnet_ids
  private_subnet_ids  = module.stg.private_subnet_ids
  ami                 = var.ami
  key_name            = var.key_name
  instance_type       = var.instance_type
  volume_type         = var.volume_type
  volume_size         = var.volume_size
  instance_id         = module.stg.instance_id
  public_key_path_web = var.public_key_path_web
  webacl_scope        = var.webacl_scope
  zone_name           = var.zone_name
  zone_id             = var.zone_id
  sub_domain_1        = var.sub_domain_1
}