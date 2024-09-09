output "eks_vpc_config" {
  value = module.eks_cluster.eks_vpc_config

}


output "subnet_pub_1a" {
  value = module.eks_network.subnet_pub_1a

}

output "oidc" {
  value = module.eks_cluster.oidc

}