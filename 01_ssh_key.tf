variable "public_key" {}

resource "digitalocean_ssh_key" "terraform_test" {
  name       = "Terraform Example"
  public_key = "${file("${var.public_key}")}"
}
