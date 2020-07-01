output "id" {
  value = aws_eks_cluster.this.id
}

output "arn" {
  value = aws_eks_cluster.this.arn
}

output "certificate_authority_data" {
  value = aws_eks_cluster.this.certificate_authority.0.data
}

output "endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "platform_version" {
  value = aws_eks_cluster.this.platform_version
}

output "status" {
  value = aws_eks_cluster.this.status
}

output "version" {
  value = aws_eks_cluster.this.version
}

output "vpc_config_cluster_security_group_id" {
  value = aws_eks_cluster.this.vpc_config.0.cluster_security_group_id
}

output "vpc_config_vpc_id" {
  value = aws_eks_cluster.this.vpc_config.0.vpc_id
}
