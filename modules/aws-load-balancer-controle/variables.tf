variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources(Nametag)"



}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to Aws resources"


}


variable "oidc" {
  type        = string
  description = "https url from Oidc provider of the eks cluster "

}
variable "cluster_name" {
  type        = string
  description = "name cluster"

}

