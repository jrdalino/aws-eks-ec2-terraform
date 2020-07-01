# General
aws_region  = "ap-southeast-1"
aws_account = "707538076348"

# Network
aws_vpc_id                  = "vpc-05e7516e4e1a850d8"
aws_subnet_gateway_id_1     = "subnet-096178b799b46429f"
aws_subnet_gateway_id_2     = "subnet-0098e44df37db8a5d"
aws_subnet_application_id_1 = "subnet-0b1a6e4805e063664"
aws_subnet_application_id_2 = "subnet-0de3a8400dcbed8cb"
subnet_count                = "2"

# EKS - Cluster
aws_eks_cluster_name          = "myproject-eks"
accessing_computer_ip         = "219.74.92.53" # Replace this with your Public IP
aws_iam_role_eks_cluster_name = "myproject-eks-cluster-service-role"
aws_security_group_name       = "myproject-eks-cluster-to-worker-nodes-security-group"

# EKS - Node Group
aws_iam_role_node_group_name = "myproject-node-group-instance-role"
aws_eks_node_group_name      = "myproject-node-group"  
