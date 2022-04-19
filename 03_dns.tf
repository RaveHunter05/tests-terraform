resource "digitalocean_domain" "aidpos" {
  name       = "aidpos.co"
}

resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.aidpos.name}"
  type   = "A"
  name   = "dayana"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}
