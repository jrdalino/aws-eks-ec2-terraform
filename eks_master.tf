# EKS Cluster
resource "aws_eks_cluster" "this" {
  name     = var.aws_eks_cluster_name
  role_arn = aws_iam_role.eks_cluster.arn
 
  vpc_config {
    # endpoint_private_access = false
    # endpoint_public_access = true
    # public_access_cidrs = "0.0.0.0/0"
    security_group_ids = [aws_security_group.this.id]    
    subnet_ids         = [var.aws_subnet_gateway_id_1, var.aws_subnet_gateway_id_2, var.aws_subnet_application_id_1, var.aws_subnet_application_id_2]
  }

  enabled_cluster_log_types = ["api", "audit"]

  # encryption_config {
  #   provider {
  #     key_arn = ""
  #   }  
  #   resources = "secrets"
  # }  

  # TODO: tags
 
  version  = "1.16" # (Optional) Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS. 

  depends_on = [
    aws_iam_role_policy_attachment.cluster_policy,
    aws_iam_role_policy_attachment.service_policy,
    aws_cloudwatch_log_group.this,
  ]
}

# CloudWatch Log
resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/eks/${var.aws_eks_cluster_name}/cluster"
  retention_in_days = 7
}
