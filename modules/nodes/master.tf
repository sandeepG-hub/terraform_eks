provider "aws" {
  region   = var.region
   profile = var.profile
}
resource "aws_eks_node_group" "master" {
  
  # cluster_name    = aws_eks_cluster.cluster.name
  cluster_name    = var.clustername
  node_group_name = var.node_group_name
  node_role_arn   = aws_iam_role.demo-node.arn
  subnet_ids = var.subnet_ids


  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }
  instance_types = var.instance_type

  depends_on = [
    aws_iam_role_policy_attachment.demo-node-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.demo-node-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.demo-node-AmazonEC2ContainerRegistryReadOnly,
  ]
}
