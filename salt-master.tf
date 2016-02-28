resource "template_file" "salt-master" {
  template = "${file("user_data.tpl")}"
  vars {
    hostname             = "salt"
    fqdn                 = "salt.local"
    role                 = "salt-master"
    env                  = "dev"
    salt_master          = "salt"
    github_user          = ""
    github_password      = ""
    user_name            = ""
    user_email           = ""
    open_mode            = "true"
    salt_repo_url        = ""
    salt_repo_revision   = "master"
    pillar_repo_url      = ""
    pillar_repo_revision = "master"
  }
}

resource "aws_instance" "salt-master" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data     = "${template_file.salt-master.rendered}"
}
