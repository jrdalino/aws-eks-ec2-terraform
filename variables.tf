# General
variable "aws_region" {
  type        = string
  description = "AWS Region."
} 

variable "aws_account" {
  type        = string
  description = "AWS Account."    
}

# Network
variable "aws_vpc_id" {
  type        = string
  description = ""
}

variable "aws_subnet_gateway_id_1" {
  type        = string
  description = ""
}

variable "aws_subnet_gateway_id_2" {
  type        = string
  description = ""
}

variable "aws_subnet_application_id_1" {
  type        = string
  description = ""
}

variable "aws_subnet_application_id_2" {
  type        = string
  description = ""
}

variable "subnet_count" {
  type        = string
  description = "The number of subnets we want to create per type to ensure high availability."
}

# EKS Cluster
variable "aws_eks_cluster_name" {
  type        = string
  description = ""
}

variable "accessing_computer_ip" {
  type        = string
  description = "IP of the computer to be allowed to connect to EKS master and nodes."
}

variable "aws_iam_role_eks_cluster_name" {
  type        = string
  description = ""
}

variable "aws_security_group_name" {
  type        = string
  description = ""
}

# EKS Node Group
variable "aws_iam_role_node_group_name" {
  type        = string
  description = ""
}

variable "aws_eks_node_group_name" {
  type        = string
  description = ""
}