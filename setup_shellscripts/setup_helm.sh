#!/bin/bash

# Set CLusterName
SYSTEM_NAME=template
ENV_TYPE=dev
CLUSTER_NAME=${SYSTEM_NAME}-${ENV_TYPE}-eks-cluster

# Associate an IAM OIDC provider with the EKS cluster
eksctl utils associate-iam-oidc-provider \
    --cluster=${CLUSTER_NAME} \
    --approve

# Add the EKS chart repository
helm repo add eks https://aws.github.io/eks-charts

# Update the EKS chart repository
helm repo update eks

exit 0
