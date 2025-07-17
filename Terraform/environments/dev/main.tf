module "vpc" {
  source         = "../../modules/vpc"
  vpc_cidr       = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  azs            = ["us-east-1a", "us-east-1b"]
  project        = "ecompulse"
}

module "eks" {
  source       = "../../modules/eks"
  cluster_name = "ecompulse-cluster"
  k8s_version  = "1.28"

  subnet_ids  = module.vpc.public_subnet_ids
  vpc_id      = module.vpc.vpc_id
  project     = "ecompulse"
  environment = "dev"
}
