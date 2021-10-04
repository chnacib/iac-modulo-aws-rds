module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.77.0"

  name                 = "wordpress"
  cidr                 = "10.11.0.0/16"
  azs                  = ["us-west-1a", "us-west-1b"]
  public_subnets       = ["10.11.0.0/24", "10.11.1.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_db_subnet_group" "wordpress" {
  name       = "wordpress-subnet"
  subnet_ids = module.vpc.public_subnets

  tags = var.default_tags
}

resource "aws_security_group" "rds" {
  name   = "wordpress_rds"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.default_tags
}
