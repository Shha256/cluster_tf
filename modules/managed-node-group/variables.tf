variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources(Nametag)"



}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to Aws resources"


}
variable "cluster_name" {
  type        = string
  description = "eks Cluster name to creat Mng"

}
variable "subnet_private_1a" {
  type        = string
  description = "Subnet ID from AZ 1a"

}
variable "subnet_private_1b" {
  type        = string
  description = "Subnet ID from AZ 1a"

}