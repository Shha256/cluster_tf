terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0"
    }
    kubernets = {
      source  = "hashicorp/kubernetes"
      version = "2.17.0"


    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.8.0"

    }
  }
}

provider "aws" {
  region  = var.region
  profile = "default"

  shared_credentials_files = ["~/.aws/credentials"]
}

provider "kubernets" {
  host                   = module.eks_cluster.endpoint
  cluster_ca_certificate = base64decode(module.eks_cluster.certificate_authority)
  exec {


    api_version = "clinet.autentication.k8s.io/v1"
    args        = ["eks", "get-token", "--cluster-name", module.eks_cluster.cluster_name]
    command     = "aws"
  }
}
provider "helm" {
  kubernetes {


    host                   = module.eks_cluster.endpoint
    cluster_ca_certificate = base64decode(module.eks_cluster.certificate_authority)
    exec {


      api_version = "client.authentication.k8s.io/v1"
      args        = ["eks", "get-token", "--cluster-name", module.eks_cluster.cluster_name]
      command     = "aws"
    }
  }
}


