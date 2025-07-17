variable "cluster_name" {}
variable "k8s_version" {}
variable "subnet_ids" {
  type = list(string)
}
variable "vpc_id" {}
variable "project" {}
variable "environment" {}
