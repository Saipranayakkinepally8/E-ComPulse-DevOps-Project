module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  cluster_name    = var.cluster_name
  cluster_version = var.k8s_version
  subnet_ids      = var.subnet_ids
  vpc_id          = var.vpc_id

  enable_irsa = true

  eks_managed_node_groups = {
    default = {
      desired_size = 1
      max_size     = 1
      min_size     = 1

      instance_types = ["t3.micro"]  # ✅ Free Tier eligible
      capacity_type  = "SPOT"
    }
  }

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}
