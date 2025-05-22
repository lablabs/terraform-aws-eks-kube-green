/**
 * # AWS EKS Kube Green Terraform module
 *
 * A Terraform module to deploy [Kube Green](https://kube-green.dev/) addon on Amazon EKS cluster.
 *
 * [![Terraform validate](https://github.com/lablabs/terraform-aws-eks-kube-green/actions/workflows/validate.yaml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-kube-green/actions/workflows/validate.yaml)
 * [![pre-commit](https://github.com/lablabs/terraform-aws-eks-kube-green/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-kube-green/actions/workflows/pre-commit.yaml)
 */
locals {
  addon = {
    name = "kube-green"

    helm_chart_version = "0.7.0"
    helm_repo_url      = "https://kube-green.github.io/helm-charts/"
  }

  addon_values = yamlencode({})

  addon_depends_on = []
}
