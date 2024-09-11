variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}
variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources(Nametag)"



}
variable "region" {
  type        = string
  description = "aws region"



}

variable "tags" {
  type        = map(any)
  description = "tags"

}