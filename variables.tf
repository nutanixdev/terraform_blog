variable "cluster_name" {
  type = string
}
variable "subnet_name" {
  type = string
}
variable "password" {
  type      = string
  sensitive = true
}
variable "endpoint" {
  type = string
}
variable "user" {
  type = string
}
