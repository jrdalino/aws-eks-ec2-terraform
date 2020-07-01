# Terraform module to provision an AWS EKS Cluster, Node Group

## This creates the following resources:
- Amazon EKS Service Role
- Security Group for Cluster Comms to Nodes
- EKS Cluster
- CloudWatch Log Group
- kubeconfig File
- Managed Node Group

## Architecture Diagram:
- TODO

## Prerequisites
- Provision an S3 bucket to store Terraform State and DynamoDB for state-lock
using https://github.com/jrdalino/aws-tfstate-backend-terraform

- kubectl
```
$ brew install kubectl 
$ kubectl version
```

- AWS CLI
```
$ brew install awscli
$ aws --version
```

- aws-iam-authenticator
```
$ brew install aws-iam-authenticator
```

## Usage
- Replace variables in state_config.tf
- Replace variables in terraform.tfvars
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

- Use the AWS CLI update-kubeconfig command to create or update your kubeconfig for your cluster.
```
$ aws eks update-kubeconfig --name myproject-eks
```

- Test your configuration
```
$ kubectl get svc
```
```
NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   172.20.0.1   <none>        443/TCP   3m30s
```

```
$ kubectl get nodes
```
```
NAME                                             STATUS   ROLES    AGE     VERSION
ip-10-0-20-144.ap-southeast-2.compute.internal   Ready    <none>   5m8s    v1.14.7-eks-1861c5
ip-10-0-21-183.ap-southeast-2.compute.internal   Ready    <none>   5m10s   v1.14.7-eks-1861c5
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## (In progress) Terraform Module Usage
Include this repository as a module in your existing terraform code:
```
module "eks" {
  source = "git::https://github.com/jrdalino/aws-eks-ec2-terraform.git?ref=master"
}
```

## References