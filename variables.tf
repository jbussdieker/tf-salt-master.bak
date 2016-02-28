variable "ami" {
  default = "ami-d4f7ddbe"
}

variable "instance_type" {
  default = "t1.micro"
}

variable "key_name" {
  default = ""
}

variable "env" {}
variable "salt_master" {}
variable "github_user" {}
variable "github_password" {}
variable "user_name" {}
variable "user_email" {}
variable "salt_repo_url" {}

variable "salt_repo_revision" {
  default = "master"
}

variable "pillar_repo_url" {}
variable "pillar_repo_revision" {
  default = "master"
}
