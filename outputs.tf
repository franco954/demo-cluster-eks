output "cluster_name" {
  description = "Nombre del cluster EKS"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint del API server de Kubernetes"
  value       = module.eks.cluster_endpoint
}

output "cluster_version" {
  description = "Versión de Kubernetes del cluster"
  value       = module.eks.cluster_version
}

output "oidc_provider_arn" {
  description = "ARN del OIDC provider (útil para crear más roles IRSA)"
  value       = module.eks.oidc_provider_arn
}

output "ebs_csi_role_arn" {
  description = "ARN del IAM Role del EBS CSI Driver"
  value       = module.ebs_csi_irsa.iam_role_arn
}

output "configure_kubectl" {
  description = "Comando para configurar kubectl"
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${module.eks.cluster_name}"
}

output "vpc_id" {
  description = "ID de la VPC creada"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "IDs de las subnets privadas"
  value       = module.vpc.private_subnets
}
