resource "template_file" "salt-master" {
  template = "${file("user_data.tpl")}"
  vars {
    hostname             = "salt"
    fqdn                 = "salt.local"
    role                 = "salt-master"
    open_mode            = "true"
    env                  = "${var.env}"
    salt_master          = "${var.salt_master}"
    github_user          = "${var.github_user}"
    github_password      = "${var.github_password}"
    user_name            = "${var.user_name}"
    user_email           = "${var.user_email}"
    salt_repo_url        = "${var.salt_repo_url}"
    salt_repo_revision   = "${var.salt_repo_revision}"
    pillar_repo_url      = "${var.pillar_repo_url}"
    pillar_repo_revision = "${var.pillar_repo_revision}"
  }
}

resource "aws_instance" "salt-master" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data     = "${template_file.salt-master.rendered}"
  key_name      = "${var.key_name}"
}
