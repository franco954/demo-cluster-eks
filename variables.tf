variable "aws_region" {
  description = "Región de AWS donde se desplegará el cluster"
  type        = string
  default     = "us-east-1"
}

variable "admin_user_arn" {
  description = "ARN del usuario IAM con acceso admin al cluster"
  type        = string
}

variable "cluster_name" {
  description = "Nombre del cluster EKS"
  type        = string
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Versión de Kubernetes"
  type        = string
  default     = "1.31"
}

variable "node_instance_type" {
  description = "Tipo de instancia EC2 para los nodos worker"
  type        = string
  default     = "t3.small"
}

variable "vpc_cidr" {
  description = "CIDR block de la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "CIDRs de las subnets privadas (una por AZ)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "CIDRs de las subnets públicas (una por AZ)"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "tags" {
  description = "Tags comunes para todos los recursos"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
