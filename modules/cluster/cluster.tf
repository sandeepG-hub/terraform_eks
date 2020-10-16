provider "aws" {
  region = var.region
  profile = var.profile
}
resource "aws_eks_cluster" "cluster" {
    name     = var.cluster
    role_arn = aws_iam_role.cluster.arn

  vpc_config {
    subnet_ids = var.subnet_ids
   }

    depends_on = [
    aws_iam_role_policy_attachment.cluster-AmazonEKSClusterPolicy,
    aws_cloudwatch_log_group.default
  ]
}

