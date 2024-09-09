variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources(Nametag)"



}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to Aws resources"


}